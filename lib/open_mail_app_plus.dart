
import 'open_mail_app_plus_platform_interface.dart';

class OpenMailAppPlus {
  Future<String?> getPlatformVersion() {
    return OpenMailAppPlusPlatform.instance.getPlatformVersion();
  }
}
