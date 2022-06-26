#
# Be sure to run `pod lib lint AMMediator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'TynCommonLibrary'
  spec.version          = '1.0.0'
  spec.summary          = '自己常用的方法封装'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  spec.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  spec.homepage         = 'https://xn--helloworld-pf2pka.top/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'despacito2' => '1756110665@qq.com' }
  spec.source           = { :git => 'https://github.com/despacito2/TynCommonLibrary.git', :tag => "#{spec.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  spec.ios.deployment_target = '9.0'

  spec.source_files = 'TynCommonLibrary/**/*'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.resource_bundles = {
  #   'AMMediator' => ['AMMediator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  spec.frameworks = 'UIKit', 'MapKit'
  spec.dependency 'JXPagingView/Paging'
  spec.dependency 'JXSegmentedView'
  spec.dependency 'MBProgressHUD'
  spec.dependency 'IQKeyboardManagerSwift'
  spec.dependency 'BRPickerView'
  spec.dependency 'WCDB.swift'
end