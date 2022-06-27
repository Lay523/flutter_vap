import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_vap_method_channel.dart';

abstract class FlutterVapPlatform extends PlatformInterface {
  /// Constructs a FlutterVapPlatform.
  FlutterVapPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterVapPlatform _instance = MethodChannelFlutterVap();

  /// The default instance of [FlutterVapPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterVap].
  static FlutterVapPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterVapPlatform] when
  /// they register themselves.
  static set instance(FlutterVapPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
