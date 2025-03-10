import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_mail_app_plus_platform_interface.dart';

/// An implementation of [OpenMailAppPlusPlatform] that uses method channels.
class MethodChannelOpenMailAppPlus extends OpenMailAppPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_mail_app_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
