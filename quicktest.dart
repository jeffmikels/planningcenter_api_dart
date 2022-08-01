import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:planningcenter_api/planningcenter_api.dart';

import 'secrets.dart';

final authorizationEndpoint = Uri.parse('https://api.planningcenteronline.com/oauth/authorize');
final tokenEndpoint = Uri.parse('https://api.planningcenteronline.com/oauth/token');
final redirectUrl = Uri.parse('http://localhost:64738/pco_callback');
final credentialsFile = File('tmp/credentials.json');

void debug(Object? o) {
  try {
    print(JsonEncoder.withIndent('  ').convert(o));
  } on JsonUnsupportedObjectError catch (e) {
    print(e);
    print(o);
  }
}

void main() async {
  print('checking credentials');
  if (await credentialsFile.exists()) {
    print('authenticating with saved credentials');
    var credentials = json.decode(await credentialsFile.readAsString());
    var creds = PlanningCenterCredentials.fromJson(credentials);
    PlanningCenter.initWithCredentials(oAuthClientId, oAuthClientSecret, creds);
  }

  /// TODO: refactor authorize so that it manages its own http server
  /// unless the user supplies their own
  if (!PlanningCenter.initialized) {
    print('initiating oAuth workflow');
    await PlanningCenter.authorize(oAuthClientId, oAuthClientSecret, PlanningCenter.oAuthScopes);
    if (!PlanningCenter.initialized) {
      print('Planning Center authentication failed.');
      exit(1);
    }
  }

  // PlanningCenter.init(appid, secret);
  var personId = '59717092';
  var collection = await PcoPeoplePerson.get(
      id: personId,
      query: PcoPeoplePersonQuery(
        includeEmails: true,
        includeMaritalStatus: true,
      ));
  if (collection.isError) {
    debug(collection.query.asMap);
    debug(collection.response.responseBody);
  }
  var person = collection.items.first;
  var emails = person.includedEmails;
  PcoPeopleCampus? primaryCampus = person.includedPrimaryCampus;

  print('\nRESULT:');
  debug(person);
  print('\nLINKS:');
  debug(person.links);
  print('\nRELATIONSHIPS:');
  debug(person.relationships);
  print('\nCAMPUS');
  debug(primaryCampus);
  print('\nMARITAL STATUS');
  debug(person.includedMaritalStatus);
  // result.relationships.forEach((key, relationships) {
  //   print('$key - ${relationships.length} relationships');
  //   for (var relationship in relationships) {
  //     print(relationship.toJson());
  //   }
  // });

  var batches = await PcoGivingBatch.get(
    query: PcoGivingBatchQuery(filterBy: PcoGivingBatchFilter.inProgress),
  );
  for (var batch in batches.items) {
    print('removing in progress batch');
    print(batch);
    if (batch.donationsCount == 0) await batch.delete();
  }

  // var batch = PcoGivingBatch();
  // await batch.save();

  // print('Testing donations');
  // var don = PcoGivingDonation(
  //   batchId: batch.id!,
  //   personId: personId,
  //   paymentMethod: 'cash',
  //   paymentCheckNumber: 1234,
  //   paymentSourceId: '289',
  //   receivedAt: DateTime.now(),
  // );
  // var des = PcoGivingDesignation(
  //   amountCents: 12345,
  //   withRelationships: {
  //     'fund': [PcoGivingFund(id: '40585')]
  //   },
  // );
  // var test = don.toDataMap(withIncluded: [des]);
  // debug(test);
  // var res = await don.saveWithDesignations([des]);
  // debug(res);

  // Once we're done with the client, save the credentials file. This ensures
  // that if the credentials were automatically refreshed while using the
  // client, the new credentials are available for the next run of the
  // program.
  await credentialsFile.create(recursive: true);
  await credentialsFile.writeAsString(json.encode(PlanningCenter.instance.oAuthCredentials));
  exit(0);
}
