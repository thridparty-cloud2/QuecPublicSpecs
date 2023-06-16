#
#  Be sure to run `pod s lint QuecNetworkChannelKit.pods' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "QuecLogKit"
  s.version          = '1.1.4'
  s.summary      = "QuecLogKit is log kit"
  s.homepage     = "http://gitlab.quectel.com:8108/frontend/app/iOS/Basic/QuecLogKit"
  s.license      = "none"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "quectel.steven" => "steven.xia@quectel.com" }
  s.ios.deployment_target = "12.0"
  s.source       = { :git => "ssh://git@gitlab.quectel.com:8061/frontend/app/iOS/Basic/QuecLogKit.git", :tag => "#{s.version}"  }
  
  s.source_files = 'QuecLogKit/Classes/**/*'
  s.vendored_libraries = 'QuecLogKit/Vendor/libmars-xlog.a'

  s.frameworks = "CoreTelephony","SystemConfiguration"
  s.libraries = "c++","z","resolv.9"
  
  s.private_header_files = 'QuecLogKit/Classes/Headers/comm/*.h', 'QuecLogKit/Classes/Headers/xlog/*.h'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end


