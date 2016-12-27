# TrafficPolice
An iOS Network Traffic Counter, a Swift wrapper for ifaddrs

## Requirements

* iOS 8.0+
* Xcode 8.1+
* Swift 3.0.1+

## Support

* WiFi & WWAN Data
* current speed & total usage

## Examples

```swift
class ViewController: UIViewController, TrafficManagerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TrafficManager.shared.delegate = self
        TrafficManager.shared.start()
    }

    func post(summary: TrafficSummary) {
        print(summary)

        // wifi:[speed:[download: 0.1 KB/s, upload: 0.0 KB/s], data:[received: 14.9 KB, sent: 13.2 KB]],
        // wwan:[speed:[download: 0.0 KB/s, upload: 0.0 KB/s], data:[received: 0.0 KB, sent: 0.0 KB]]

        // Do whatever you want here!
    }
}
```

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate TrafficPolice into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "anotheren/TrafficPolice" ~> 0.3.0
```

## License

TrafficPolice is released under the MIT license. See LICENSE for details.
