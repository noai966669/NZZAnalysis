#
# Be sure to run `pod lib lint PodTest1618.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NZZAnalysis"
  s.version          = "0.0.1"
  s.summary          = "公司内用"
  s.description      = "公司内用,统计app"
  s.homepage         = "https://github.com/noai966669/NZZAnalysis.git"
  s.license          = 'MIT'
  s.author           = { "ai966669" => "578172874@qq.com" }
  s.source           = { :git => "https://github.com/noai966669/NZZAnalysis.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'UMengAnalytics-NO-IDFA'
end
