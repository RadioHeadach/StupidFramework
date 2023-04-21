Pod::Spec.new do |s|
  s.name = "StupidFramework"
  s.version = "5.0.4"
  s.summary = "魔度引擎"

  s.description = <<-DESC
  A repo to test XCFramework
                       DESC

  s.homepage = "https://github.com/RadioHeadach/StupidFramework"
  s.author = { "RadioHeadache" => "1@1.com" }
  s.source = {
    http:
      "https://github.com/MinstoneCorp/StupidFramework/releases/download/5.0.3/StupidFramework-5.0.3.zip"
  }

  s.requires_arc = true
  s.platform = :ios
  s.ios.deployment_target = "8.0"

  # XCFramework 适配
  s.vendored_frameworks = "StupidFramework.xcframework"
  s.source_files =
    "StupidFramework.xcframework/ios-arm64/StupidFramework.framework/Headers/*.{h}"
  s.resource =
    "StupidFramework.xcframework/ios-arm64/StupidFramework.framework/*.{png,json}"

  s.frameworks =
    "WebKit",
    "UIKit",
    "SystemConfiguration",
    "MessageUI",
    "CoreBluetooth",
    "Photos",
    "EventKit",
    "Contacts",
    "AVFoundation",
    "CoreMedia",
    "CoreGraphics",
    "CoreLocation",
    "AddressBook",
    "AudioToolbox",
    "MobileCoreServices",
    "MediaPlayer",
    "QuickLook",
    "CoreMotion"
  s.libraries = "sqlite3"

  s.dependency "AYCategory"
  s.dependency "AYPromise"
  s.dependency "AYQuery"
  s.dependency "AYFile"
  s.dependency "Masonry", "~> 1.0"
  s.dependency "AFNetworking/Reachability", "~> 3.0"
  s.dependency "AFNetworking/Serialization", "~> 3.0"
  s.dependency "AFNetworking/Security", "~> 3.0"
  s.dependency "AFNetworking/NSURLSession", "~> 3.0"
  s.dependency "SVProgressHUD", "~> 2.0"
  s.dependency "TZImagePickerController", "3.6.4"
  s.dependency "GCDWebServer", "~> 3.0"
  s.dependency "SQLCipher", "~>4.0"

  # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7, armv7s' }
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7, armv7s' }

  # s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

  s.license = {
    type: "Copyright",
    text:
      "Copyright (C) 2020 Guangzhou Minstone Software Corp.,LTD. All rights reserved."
  }
end
