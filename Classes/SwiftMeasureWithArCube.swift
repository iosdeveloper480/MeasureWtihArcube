import Flutter
import UIKit

public class SwiftMeasureWithArCube: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "measure_with_arcube", binaryMessenger: registrar.messenger())
    let instance = SwiftMeasureWithArCube()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    let factory = IosARViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "measure_with_arcube")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

}
