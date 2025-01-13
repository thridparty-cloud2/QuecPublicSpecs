#
# Be sure to run `pod lib lint QuecIotChannelKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QuecIotChannelKit'
  s.version          = '0.6.2-Philipsch'
  s.summary          = 'A short description of QuecIotChannelKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/vic.huang/QuecIotChannelKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vic.huang' => 'vic.huang@quectel.com' }
  s.source           = { :git => 'ssh://git@gitlab.quectel.com:8061/frontend/app/iOS/Basic/QuecIotChannelKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'QuecIotChannelKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'QuecIotChannelKit' => ['QuecIotChannelKit/Assets/*.png']
  # }

  s.public_header_files = 'QuecIotChannelKit/Classes/public/**/*.h'
  s.static_framework = true
  
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
  }
   
  s.frameworks = 'CoreBluetooth'
   
  s.dependency 'QuecFoundationKit'
  s.dependency 'QuecConnectivityKit'
  s.dependency 'QuecLogKit'

  s.dependency 'QuecSocketChannelKit'
  s.dependency 'QuecBleChannelKit', '1.4.3'
  s.dependency 'QuecWebSocketChannelKit'
  s.dependency 'QuecCommonUtil', '0.3.7'
  s.dependency 'QuecMQTTChannelKit'
  s.dependency 'YYModel'

end
