import 'package:flutter_test/flutter_test.dart';
import 'package:open_mail_app_plus/open_mail_app_plus.dart';
import 'package:open_mail_app_plus/open_mail_app_plus_platform_interface.dart';
import 'package:open_mail_app_plus/open_mail_app_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenMailAppPlusPlatform
    with MockPlatformInterfaceMixin
    implements OpenMailAppPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenMailAppPlusPlatform initialPlatform = OpenMailAppPlusPlatform.instance;

  test('$MethodChannelOpenMailAppPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenMailAppPlus>());
  });

  test('getPlatformVersion', () async {
    OpenMailAppPlus openMailAppPlusPlugin = OpenMailAppPlus();
    MockOpenMailAppPlusPlatform fakePlatform = MockOpenMailAppPlusPlatform();
    OpenMailAppPlusPlatform.instance = fakePlatform;

    expect(await openMailAppPlusPlugin.getPlatformVersion(), '42');
  });
}
