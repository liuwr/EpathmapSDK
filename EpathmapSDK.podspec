#
# Be sure to run `pod lib lint EpathmapSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EpathmapSDK'
  s.version          = '0.1.3'
  s.summary          = '释途室内地图导航SDK'

  s.description      = <<-DESC
释途室内导航 EpathmapSDK Indoor navigation map ibeacon buildings
                       DESC

  s.homepage         = 'https://github.com/liuwr/EpathmapSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2319484461@qq.com' => '2319484461@qq.com' }
  s.source           = { :git => 'https://github.com/liuwr/EpathmapSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = 'epathmap/**/*'

  s.resources = "EpathmapSDK.xcassets","EpathmapSDKImage/*.png",
  s.vendored_frameworks = "EpathmapSDK/EpathmapSDK.framework"
  s.frameworks = "UIKit", "Foundation", "QuartzCore", "SystemConfiguration", "CoreGraphics", "CoreLocation", "CoreTelephony", "AudioToolbox", "AVFoundation", "AddressBook"
  s.weak_framework = "Contacts"
  # s.library   = "iconv"
  s.libraries = "z", "z.1.2.5", "xml2"


end
