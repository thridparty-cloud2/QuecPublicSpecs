#
# Be sure to run `pod lib lint QuecCommonUtil.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QuecCommonUtil'
  s.version          = '0.3.7'
  s.summary          = 'A short description of QuecCommonUtil.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://gitlab.quectel.com:8108/frontend/app/QuecCommonUtil'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'QUEC_CI' => 'cloud-cicd@quectel.com' }
  s.source           = { :git => 'ssh://git@gitlab.quectel.com:8061/frontend/app/iOS/Basic/QuecCommonUtil.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'QuecCommonUtil/Classes/**/*'
  
  # s.static_framework = true
 
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
  }
  s.dependency 'QuecFoundationKit'



end

