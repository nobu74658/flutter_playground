import Flutter
import UIKit

@UIflutter_playgroundlicationMain
@objc class flutter_playgroundDelegate: Flutterflutter_playgroundDelegate {
  override func flutter_playgroundlication(
    _ flutter_playgroundlication: UIflutter_playgroundlication,
    didFinishLaunchingWithOptions launchOptions: [UIflutter_playgroundlication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.flutter_playgroundlication(flutter_playgroundlication, didFinishLaunchingWithOptions: launchOptions)
  }
}
