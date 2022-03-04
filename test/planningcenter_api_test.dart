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
      var collection = await PcoServicesSong.get();
      if (!collection.isError) {
        for (var song in collection.data) {
          print(song.attributes);
        }
      }
    });
  });
}
