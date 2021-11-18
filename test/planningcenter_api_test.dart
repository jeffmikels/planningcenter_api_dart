import 'package:planningcenter_api/planningcenter_api.dart';
import 'package:test/test.dart';

const appid = 'YOURAPPID';
const secret = 'YOURSECRET';

void main() {
  group('A group of tests', () {
    PlanningCenter.init(appid, secret);

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      var songs = await PcoServicesSong.getMany();
      for (var song in songs) {
        print(song.attributes);
      }
    });
  });
}
