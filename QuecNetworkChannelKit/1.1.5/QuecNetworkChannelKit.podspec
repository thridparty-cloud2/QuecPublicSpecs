#
#  Be sure to run `pod spec lint QuecNetworkChannelKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "QuecNetworkChannelKit"
  s.version          = '1.1.5'
  s.summary      = "QuecNetworkChannelKit is network Channel"
  s.homepage     = "https://www.quectel.com"
  s.license      = "none"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "quectel.steven" => "steven.xia@quectel.com" }
  s.ios.deployment_target = "12.0"
#  s.static_framework = true
  s.source       = { :git => "ssh://git@gitlab.quectel.com:8061/frontend/app/iOS/Basic/QuecNetworkChannelKit.git", :tag => "#{s.version}"  }
  s.source_files = "QuecNetworkChannelKit/*.{h,m,mm}"
  s.dependency 'AFNetworking'
  s.dependency 'QuecLogKit'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
