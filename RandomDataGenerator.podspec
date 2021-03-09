#
# Be sure to run `pod lib lint RandomDataGenerator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RandomDataGenerator'
  s.version          = '0.1.0'
  s.summary          = 'RandomDataGenerator is very easy to use and very usefull for Lorem Data'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  'A RandomDataGenerator is a library which is basically used to Generate a number of Random Data for UITAbleView and UICollectionView or for normal bunch of Data. Suppose that if you your app is in Developement Phase and You have not yet implemeted any API for your app but still you want to display Random data in your UI so you can use this to generate Random Data.'
  DESC
  
  s.homepage         = 'https://github.com/kumarlav0/RandomDataGenerator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kumarlav0' => 'kumarstslav@gmail.com' }
  s.source           = { :git => 'https://github.com/kumarlav0/RandomDataGenerator.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.instagram.com/kumarstslav'
  
  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'RandomDataGenerator/Classes/*.swift'
  
  s.resource_bundles = {
    'Resources' => ['RandomDataGenerator/Assets/*.png']
  }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
