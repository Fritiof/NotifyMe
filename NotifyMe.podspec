#
# Be sure to run `pod lib lint NotifyMe.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NotifyMe'
  s.version          = '0.1.0'
  s.summary          = 'NotifyMe is a beatiful framework for handling notifications in-app.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A very descriptive description is coming to a cocoapod near you! A very descriptive description is coming to a cocoapod near you! 
                       DESC

  s.homepage         = 'https://github.com/fritiof/NotifyMe'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fritiof Gure' => 'fritiof@gure.se' }
  s.source           = { :git => 'https://github.com/fritiof/NotifyMe.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'NotifyMe/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NotifyMe' => ['NotifyMe/Assets/*.png', 'Pod/**/*.xib']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'

end
