
        Pod::Spec.new do |s|
          s.name             = 'UISwift'
          s.version          = '1.0.0'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["Charts", "DeepDiff", "IQKeyboardManagerSwift", "NVActivityIndicatorView", "lottie-ios"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'Fachri Febrian' => 'fachripaul@gmail.com' }
          s.source           = { :git => 'https://github.com/grab/cocoapods-pod-merge', :tag => '1.0.0' }
          s.ios.deployment_target = '8.0'
          s.source_files = 'Sources/**/*.{h,m,mm,swift}'
        
s.swift_version = ["5.0"]
s.resource = "Sources/IQKeyboardManagerSwift/IQKeyboardManagerSwift/Resources/IQKeyboardManager.bundle", "Sources/NVActivityIndicatorView/NVActivityIndicatorView/NVActivityIndicatorView/Images.xcassets"
s.frameworks = "UIKit", "Foundation", "CoreGraphics", "QuartzCore"
end
