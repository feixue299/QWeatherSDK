#
# Be sure to run `pod lib lint QWeatherSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QWeatherSDK'
  s.version          = '4.6'
  s.summary          = '和风天气SDK，官方未提供cocoapods集成方式，所以自建了一个官方SDK的集成方式.'

  s.homepage         = 'https://github.com/feixue299/QWeatherSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'feixue299' => 'ariablink299@gmail.com' }
  s.source           = { :git => 'https://github.com/feixue299/QWeatherSDK.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'QWeather/QWeather.framework'


  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'AFNetworking', '~> 4.0'
end
