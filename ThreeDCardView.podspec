#
# Be sure to run `pod lib lint ThreeDCardView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ThreeDCardView'
  s.version          = '1.0.0'
  s.summary          = 'This is ThreeDCardView.'
  s.homepage         = 'https://github.com/fomagran/ThreeDCardView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fomagran' => 'fomagran6@naver.com' }
  s.source           = { :git => 'https://github.com/fomagran/ThreeDCardView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.3'
  s.source_files = 'ThreeDCardView/Classes/**/*'
end
