import 'dart:async';
import 'dart:io'; // to exit the script faster
import 'dart:convert'; // for the pretty printing of json

import 'package:planningcenter_api/planningcenter_api.dart';

/// this is where I store my [appid], [secret], [oAuthClientId], and [oAuthClientSecret] constants
import '../secrets.dart';

void debug(Object o) {
  try {
    print(JsonEncoder.withIndent('  ').convert(o));
  } on JsonUnsupportedObjectError catch (e) {
    print('DEBUG AS STRING BECAUSE: $e');
    print(o);
  }
}

Future checkResponseError(PlanningCenterApiResponse res) async {
  if (res is PlanningCenterApiError) {
    debug(res.message);
    debug(res.responseBody);
  } else {
    debug('Success!');
  }
}

/// here's the real example code
void main() async {
  // begin by initializing the PlanningCenter api
  // this init will use a developer appid and secret giving you access to everything that developer can access
  // PlanningCenter.init(appid, secret);

  // this init will use oAuth
  var credentialsFile = File('credentials.json');
  if (await credentialsFile.exists()) {
    try {
      var credentials = json.decode(await credentialsFile.readAsString());
      var creds = PlanningCenterCredentials.fromJson(credentials);
      PlanningCenter.initWithCredentials(oAuthClientId, oAuthClientSecret, creds);
    } catch (e) {
      print(e);
      print('could not read credentials file');
    }
  }

  if (!PlanningCenter.initialized) {
    print('authorizing planning center with oauth');
    await PlanningCenter.authorize(
      oAuthClientId,
      oAuthClientSecret,
      PlanningCenter.oAuthScopes,
      redirectUri: 'http://localhost:64738/pco_callback',
    );
  }

  if (!PlanningCenter.initialized) {
    print('Planning Center authentication failed.');
    exit(1);
  }

  // Now, all classes beginning with Pco are available for use

  /// Get the service types on the default organization (defaults to grabbing 25)
  /// will return List<PcoServicesServiceType>
  var collection = await PcoServicesServiceType.get();
  debug(collection.response);
  if (!collection.isError) {
    var service = collection.items.first;
    print('Found Service Type: ${service.name}');

    /// most class instances have methods allowing you to fetch related items
    /// this time, we also are using a query object to request plans in descending order
    /// of their sort date
    var plans = await service.getPlans(
      query: PcoServicesPlanQuery(orderBy: PcoServicesPlanOrder.sortDate, reverse: true),
    );
    if (!plans.isError) {
      var plan = plans.items.first;
      print('Found Plan: ${plan.seriesTitle} - ${plan.title} - ${plan.lastTimeAt}');
      var items = await plan.getItems();
      for (var item in items.items) {
        print('Plan Item: ${item.title}\n${item.description}\n');
        if (item.title == 'CHANGE ME') {
          print('attempting to update this item');
          item.title = 'CHANGED';
          var result = await item.save();
          print(result.isError ? 'failed' : 'successful');
        }
      }
    }
  } else {
    print(collection.error!.message);
  }

  // to call the API directly, you can do this, but it will not return
  // typed data... just a moderately parsed PlanningCenterApiResponse object
  var res = await PlanningCenter.instance.call('/services/v2/songs');
  checkResponseError(res);
  debug(res.toJson());

  // Once we're done with the client, save the credentials file. This ensures
  // that if the credentials were automatically refreshed while using the
  // client, the new credentials are available for the next run of the
  // program.
  if (PlanningCenter.instance.oAuthCredentials != null) {
    await credentialsFile.create(recursive: true);
    await credentialsFile.writeAsString(json.encode(PlanningCenter.instance.oAuthCredentials));
  }

  // var email = PcoPeopleEmail('1', address: 'email@example.com', location: 'Home',isPrimary: true);
  // email.save();
  // PcoCollection<PcoPeopleEmail> emails = await PcoPeopleEmail.getFromPeople('1');
  // var myEmail = emails.data.first;
  // var myProfile = await myEmail.getPerson();
  // print(myProfile.data.first);

  var r = await PcoServicesPlan.getFromServiceType('1234567');
  if (!r.isError) {
    var plan = r.items.first;
    var r2 = await plan.itemReorder(PlanningCenterApiData('PlanItemReorder', attributes: {
      'sequence': ['5', '1', '3']
    }));
    checkResponseError(r2);
    debug(r2.toJson());
  }

  var r3 = await PlanningCenterApiFile.upload('myImage.jpg');
  if (r3.isError) {
    debug(r3.errorMessage);
    debug(r3.responseBody);
  } else {
    var f = (r3.data.first);
    print('File was successfully uploaded... it can now be attached to other objects by using its UUID');
    print('UUID: ${f.id}');
    print('CONTENT-TYPE: ${f.contentType}');
  }

  /// Here's an example for how to add a donation to the giving module

  // first, add a batch
  var batch = PcoGivingBatch();
  await batch.save();

  // now create a donation object
  var don = PcoGivingDonation(
    batchId: batch.id!,
    personId: '1234',
    paymentMethod: 'cash',
    paymentCheckNumber: 1234,
    paymentSourceId: '289',
    receivedAt: DateTime.now(),
  );

  // now save it to the server with two designations
  // note that saving donations without a designation
  // will fail.
  var r4 = await don.saveWithDesignations([
    PcoGivingDesignation(
      amountCents: 1234,
      withRelationships: {
        'fund': [PcoGivingFund(id: '1')]
      },
    ),
    PcoGivingDesignation(
      amountCents: 5678,
      withRelationships: {
        'fund': [PcoGivingFund(id: '2')]
      },
    )
  ]);
  checkResponseError(r4);
  debug(r4.toJson());

  exit(0);
}
