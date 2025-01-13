#
#  Be sure to run `pod spec lint QuecNetworkChannelKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "QuecBleChannelKit"
  s.version          = '1.4.3'
  s.summary      = "QuecBleChannelKit is ble channel kit"
  s.homepage     = "https://www.quectel.com"
  s.license      = "none"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "quectel.steven" => "steven.xia@quectel.com" }
  s.ios.deployment_target = "12.0"
  s.source       = { :git => "ssh://git@gitlab.quectel.com:8061/frontend/app/iOS/Basic/QuecBleChannelKit.git", :tag => "#{s.version}" }
  s.source_files = "QuecBleChannelKit/*.{h,m,mm}"
  s.dependency 'QuecFoundationKit'
  s.dependency 'QuecCommonUtil'
  s.dependency 'QuecLogKit'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

