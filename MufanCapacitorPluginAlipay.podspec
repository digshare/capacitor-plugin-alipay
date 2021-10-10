require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'MufanCapacitorPluginAlipay'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.vendored_frameworks = 'ios/AlipaySDK.framework'
  s.ios.deployment_target  = '12.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'
  
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  s.frameworks = 'SystemConfiguration', 'Security', 'CoreTelephony', 'CFNetwork', 'UIKit', 'QuartzCore', 'CoreText', 'CoreGraphics', 'Foundation', 'CoreMotion'
  s.libraries = 'z', 'c++'

  s.public_header_files = 'ios/Plugin/AlipaySDK/*.h'
  s.resource_bundles = {
    'AlipaySDK' => ['ios/Plugin/AlipaySDK/AlipaySDK.bundle']
  }
end
