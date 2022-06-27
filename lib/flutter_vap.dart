
import 'flutter_vap_platform_interface.dart';

class FlutterVap {
  Future<String?> getPlatformVersion() {
    return FlutterVapPlatform.instance.getPlatformVersion();
  }
}
