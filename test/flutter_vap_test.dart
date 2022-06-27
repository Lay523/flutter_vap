import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vap/flutter_vap.dart';
import 'package:flutter_vap/flutter_vap_platform_interface.dart';
import 'package:flutter_vap/flutter_vap_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterVapPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterVapPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterVapPlatform initialPlatform = FlutterVapPlatform.instance;

  test('$MethodChannelFlutterVap is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterVap>());
  });

  test('getPlatformVersion', () async {
    FlutterVap flutterVapPlugin = FlutterVap();
    MockFlutterVapPlatform fakePlatform = MockFlutterVapPlatform();
    FlutterVapPlatform.instance = fakePlatform;
  
    expect(await flutterVapPlugin.getPlatformVersion(), '42');
  });
}
