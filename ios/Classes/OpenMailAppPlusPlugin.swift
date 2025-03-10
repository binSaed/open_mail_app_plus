import Flutter
import UIKit

public class OpenMailAppPlusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "open_mail_app_plus", binaryMessenger: registrar.messenger())
    let instance = OpenMailAppPlusPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
}
