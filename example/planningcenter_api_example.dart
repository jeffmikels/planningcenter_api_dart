import 'package:planningcenter_api/planningcenter_api.dart';

const appid = 'YOURAPPID';
const secret = 'YOURSECRET';

void main() {
  var api = PlanningCenter.init(appid, secret);
}
