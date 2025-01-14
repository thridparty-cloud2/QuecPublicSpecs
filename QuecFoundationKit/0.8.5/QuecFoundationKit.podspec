#
# Be sure to run `pod lib lint QuecFoundationKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QuecFoundationKit'
  s.version          = '0.8.5'
  s.summary          = 'A short description of QuecFoundationKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://gitlab.quectel.com:8108/frontend/app/iOS/Basic/QuecFoundationKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'paul.dai' => 'paul.dai@quectel.com' }
  s.source           = { :git => 'ssh://git@gitlab.quectel.com:8061/frontend/app/iOS/Basic/QuecFoundationKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'QuecFoundationKit/Classes/**/*'
  
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
  }
  
  # s.resource_bundles = {
  #   'QuecFoundationKit' => ['QuecFoundationKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end