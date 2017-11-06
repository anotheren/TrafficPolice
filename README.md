# TrafficPolice
An iOS Network Traffic Counter, a Swift wrapper for ifaddrs.h

## Requirements

* iOS 8.0+
* Xcode 9
* Swift 4.0

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

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build TrafficPolice 0.6+.

To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do

    pod 'TrafficPolice', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate TrafficPolice into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "anotheren/TrafficPolice" ~> 1.0
```

## License

TrafficPolice is released under the MIT license. See LICENSE for details.
