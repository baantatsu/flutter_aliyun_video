#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint aliyun_video.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'aliyun_video'
  s.version          = '0.0.5'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.resource_bundles = {
    'aliyun_video' => ['Classes/Assets/*.png']
  }
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  
  s.static_framework = true
  # 用于引入头文件,解决自定义头文件被覆盖问题.
  s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>', '#import "AlivcImage.h"', '#import "AlivcMacro.h"'
  
  s.dependency 'AliyunVideoSDKStd'
  s.dependency 'QuCore-ThirdParty'
  s.dependency 'AlivcConan'
  s.dependency 'VODUpload'
  s.dependency 'AliyunOSSiOS'
  s.dependency 'MJRefresh'
  s.dependency 'LBXScan/LBXNative'
  s.dependency 'LBXScan/UI'
  s.dependency 'MBProgressHUD'
  s.dependency 'LXReorderableCollectionViewFlowLayout'
  s.dependency 'TTRangeSlider'
  s.dependency 'SDWebImage'
  s.dependency 'AFNetworking'
  s.dependency 'FMDB'
  s.dependency 'JSONModel'
  s.dependency 'ZipArchive'
  s.dependency 'UMCCommon'
  s.dependency 'UMCAnalytics'
  s.dependency 'Nama-lite'
  # 用于引入第三方framework,对应路径 flutter_aliyun_video/ios/Framework
  s.vendored_frameworks = 'Framework/*.framework'


  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
