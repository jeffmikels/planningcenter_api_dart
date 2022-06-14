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

Future<String> authRedirector(String url) async {
  var completer = Completer<String>();
  var server = await HttpServer.bind('0.0.0.0', 64738);
  server.listen((HttpRequest req) async {
    req.response.write('Thanks! You can close this window now.');
    req.response.close();
    server.close();
    print(req.requestedUri);
    print(req.requestedUri.queryParameters);
    completer.complete(req.requestedUri.queryParameters['code'] ?? '');
  });

  print('visit the following url in your browser');
  print(url);

  // Once the user is redirected to `redirectUrl`, pass the query parameters to
  // the AuthorizationCodeGrant. It will validate them and extract the
  // authorization code to create a new Client.
  return completer.future;
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
      'http://localhost:64738/pco_callback',
      PlanningCenter.oAuthScopes,
      authRedirector,
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
    var plans = await service.getPlans(query: PlanningCenterApiQuery(order: '-sort_date'));
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
  if (res is PlanningCenterApiError) {
    debug(res.message);
    debug(res.responseBody);
  }
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
    if (r2.isError) {
      print(r2.errorMessage);
    } else {
      print('success');
    }
  }

  var r3 = await PlanningCenterApiFile.upload('myImage.jpg');
  if (r3.isError) {
    print(r3.errorMessage);
  } else {
    var f = (r3.data.first);
    print('File was successfully uploaded... it can now be attached to other objects by using its UUID');
    print('UUID: ${f.id}');
    print('CONTENT-TYPE: ${f.contentType}');
  }

  exit(0);
}
