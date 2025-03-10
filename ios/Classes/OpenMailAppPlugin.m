#import "OpenMailAppPlugin.h"
#if __has_include(<open_mail_app_plus/open_mail_app_plus-Swift.h>)
#import <open_mail_app_plus/open_mail_app_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "open_mail_app_plus-Swift.h"
#endif

@implementation OpenMailAppPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [OpenMailAppPlugin registerWithRegistrar:registrar];
}
@end
