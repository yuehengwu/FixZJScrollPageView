#
# Be sure to run `pod lib lint ZJScrollPageView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZJScrollPageView_Private'
  s.version          = '0.1.1'
  s.summary          = 'none summary'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Revise ZJScrollPageView, because original author doesn't maintain this pod .
                       DESC

  s.homepage         = 'https://gitlab.263nt.com/italkbbspecs/zjscrollpageview'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wyh' => 'yueheng.wu@net263.com' }
  s.source           = { :git => 'ssh://git@gitlab.263nt.com:2200/italkbbspecs/zjscrollpageview.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZJScrollPageView_Private/Classes/**/*'
  s.frameworks = 'UIKit'
  
  # s.resource_bundles = {
  #   'ZJScrollPageView' => ['ZJScrollPageView_Private/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
