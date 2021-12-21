#import "MeasureWithArCube.h"
#if __has_include(<measure_with_arcube/measure_with_arcube-Swift.h>)
#import <measure_with_arcube/measure_with_arcube-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "measure_with_arcube-Swift.h"
#endif

@implementation MeasureWithArCube
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMeasureWithArCube registerWithRegistrar:registrar];
}
@end
