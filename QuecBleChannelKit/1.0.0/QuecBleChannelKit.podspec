#
#  Be sure to run `pod spec lint QuecNetworkChannelKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "QuecBleChannelKit"
  spec.version      = "1.0.0"
  spec.summary      = "QuecBleChannelKit is ble channel kit"
  spec.homepage     = "https://www.quectel.com"
  spec.license      = "none"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "quectel.steven" => "steven.xia@quectel.com" }
  spec.ios.deployment_target = "10.0"
  spec.static_framework = true
  spec.source       = { :http => "https://quec-saas-app.oss-cn-shanghai.aliyuncs.com/sdk/#{spec.name}-#{spec.version}.zip", :type => "zip" }
  spec.ios.vendored_frameworks = "QuecBleChannelKit/QuecBleChannelKit.framework"
  spec.source_files = "QuecBleChannelKit/QuecBleChannelKit.framework/Headers/*.h"
  spec.public_header_files = "QuecBleChannelKit/QuecBleChannelKit.framework/Headers/*.h"
  spec.dependency 'QuecCommonKit', '~>1.0.0'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end

