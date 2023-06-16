#
#  Be sure to run `pod spec lint QuecNetworkChannelKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "QuecLogKit"
  spec.version      = "1.0.1"
  spec.summary      = "QuecLogKit is log kit"
  spec.homepage     = "https://www.quectel.com"
  spec.license      = "none"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "quectel.steven" => "steven.xia@quectel.com" }
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "ssh://git@gitlab.quectel.com:8061/frontend/app/IOSSDK/QuecLogKit.git", :tag => "#{spec.version}"  }
  spec.frameworks = "CoreTelephony","SystemConfiguration"
  spec.libraries = "c++","z","resolv.9"
  spec.source_files = "QuecLogKit/*.{h,m,mm}"
  spec.vendored_libraries = "QuecLogKit/XLog/libmars-xlog.a"
  spec.preserve_paths = "QuecLogKit/XLog/libmars-xlog.a"
  spec.subspec 'XLog' do |ss|
     ss.subspec 'Headers' do |sss|
        sss.subspec 'comm' do |ssss|
         ssss.source_files = "QuecLogKit/XLog/Headers/comm/*.{h,m,mm}"
        end
        sss.subspec 'xlog' do |ssss|
          ssss.source_files = "QuecLogKit/XLog/Headers/xlog/*.{h,m,mm}"
        end
    end
  end
end


