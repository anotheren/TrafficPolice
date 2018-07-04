Pod::Spec.new do |s|

  s.name         = "TrafficPolice"
  s.version      = "1.1"
  s.summary      = "A Swifty wrapper for ifaddrs.h"
  s.homepage     = "https://github.com/anotheren/TrafficPolice"
  s.license      = { :type => "MIT" }
  s.author       = { "liudong" => "liudong.edward@qq.com" }
  s.requires_arc = true
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/anotheren/TrafficPolice.git",
                     :tag => s.version }
  s.source_files = "Source/*.swift"
  s.dependency 'SwiftTimer', '~> 2.0'

end
