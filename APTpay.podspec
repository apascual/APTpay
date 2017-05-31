#
# Be sure to run `pod lib lint APTpay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'APTpay'
  s.version          = '0.1.3'
  s.summary          = 'Tpay polish payments library.'
  s.description      = "Pod that merely embeds the Tpay.com polish payments framework."

  s.homepage         = 'https://github.com/apascual/APTpay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'apascual' => 'abelpascual@gmail.com' }
  s.source           = { :git => 'https://github.com/apascual/APTpay.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Abel_Pascual'

  s.platform     = :ios, '8.0'
  s.source_files = 'TransferujSDK.framework/Headers/*.h'
  s.requires_arc = true
  s.ios.vendored_frameworks = 'TransferujSDK.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)', 'ENABLE_BITCODE' => 'NO' }
  s.preserve_paths = 'TransferujSDK.framework'

end
