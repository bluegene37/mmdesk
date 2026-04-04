import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    self.contentViewController = flutterViewController

    // Set initial window size (width x height) and center on screen
    let screenFrame = NSScreen.main?.visibleFrame ?? NSRect(x: 0, y: 0, width: 1440, height: 900)
    let width: CGFloat = 1280
    let height: CGFloat = 800
    let x = screenFrame.origin.x + (screenFrame.width - width) / 2
    let y = screenFrame.origin.y + (screenFrame.height - height) / 2
    self.setFrame(NSRect(x: x, y: y, width: width, height: height), display: true)
    self.minSize = NSSize(width: 900, height: 600)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}
