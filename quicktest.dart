import 'dart:async';
import 'dart:convert';
import 'dart:io';
import './lib/planningcenter_api.dart';
import 'package:http/http.dart' as http;

import 'secrets.dart';

final authorizationEndpoint = Uri.parse('https://api.planningcenteronline.com/oauth/authorize');
final tokenEndpoint = Uri.parse('https://api.planningcenteronline.com/oauth/token');
final redirectUrl = Uri.parse('http://localhost:64738/pco_callback');
final credentialsFile = File('tmp/credentials.json');

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

void main() async {
  if (await credentialsFile.exists()) {
    var credentials = json.decode(await credentialsFile.readAsString());
    var creds = PlanningCenterCredentials.fromJson(credentials);
    PlanningCenter.initWithCredentials(oAuthClientId, oAuthClientSecret, creds);
  } else {
    var authorized = await PlanningCenter.authorize(
      oAuthClientId,
      oAuthClientSecret,
      'http://localhost:64738/pco_callback',
      PlanningCenter.oAuthScopes,
      authRedirector,
    );
    if (!PlanningCenter.initialized) {
      print('Planning Center authentication failed.');
      exit(1);
    }
  }

  // PlanningCenter.init(appid, secret);
  var result = await PcoPeoplePerson.getSingle('29166364', allIncludes: false);
  if (result == null) return;

  // print(result.toJson());
  // print(result.attributes);
  // print(result.links);
  // print(result.relationshipsData);
  result.relationships.forEach((key, relationships) {
    print('$key - ${relationships.length} relationships');
    for (var relationship in relationships) {
      print(relationship.toJson());
    }
  });

  // Once we're done with the client, save the credentials file. This ensures
  // that if the credentials were automatically refreshed while using the
  // client, the new credentials are available for the next run of the
  // program.
  await credentialsFile.create(recursive: true);
  await credentialsFile.writeAsString(json.encode(PlanningCenter.instance.oAuthCredentials));
  exit(0);
}
