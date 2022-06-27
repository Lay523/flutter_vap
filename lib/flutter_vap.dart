
import 'flutter_vap_platform_interface.dart';

export 'src/flutter_vap_view.dart';

class FlutterVap {
  Future<String?> getPlatformVersion() {
    return FlutterVapPlatform.instance.getPlatformVersion();
  }
}
