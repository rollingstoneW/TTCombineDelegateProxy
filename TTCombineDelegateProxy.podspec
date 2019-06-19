#
#  Be sure to run `pod spec lint TTCombineDelegateProxy.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "TTCombineDelegateProxy"
  spec.version      = "0.0.1"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.summary      = "Dispatch proxy methods with multi delegates using runtime"
  spec.description  = <<-DESC
  Dispatch proxy methods with multi delegates using runtime.
                   DESC

  spec.homepage     = "https://github.com/rollingstoneW/TTCombineDelegateProxy"
  spec.author             = { "rollingstoneW" => "190268198@qq.com" }
  spec.platform     = :ios, "8.0"

  spec.source       = { :git => "https://github.com/rollingstoneW/TTCombineDelegateProxy.git", :tag => spec.version.to_s }
  spec.source_files  = "Classes", "TTCycleBanner/TTCombineDelegateProxy/*.{h,m}"

  spec.frameworks = 'Foundation'

end
