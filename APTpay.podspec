#
# Be sure to run `pod lib lint APTpay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'APTpay'
  s.version          = '0.1.0'
  s.summary          = 'Tpay polish payments library.'
  s.description      = "Pod that merely embeds the Tpay.com polish payments framework."

  s.homepage         = 'https://github.com/apascual/APTpay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'apascual' => 'abelpascual@gmail.com' }
  s.source           = { :git => 'https://github.com/apascual/APTpay.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Abel_Pascual'

  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'APTpay/Frameworks/TransferujSDK.framework'
end
