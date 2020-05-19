
        Pod::Spec.new do |s|
          s.name             = 'UISwift'
          s.version          = '1.0.5'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["Charts", "DeepDiff", "IQKeyboardManagerSwift", "NVActivityIndicatorView", "lottie-ios"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'GrabTaxi Pte Ltd' => 'dummy@grabtaxi.com' }
          s.source           = { :git => 'https://github.com/grab/cocoapods-pod-merge', :tag => '1.0.0' }
          s.ios.deployment_target =  '10.0'
          s.source_files = 'Sources/**/*.{h,m,mm,swift,c}'
        
s.swift_version = ["5.0"]
s.resource = "Sources/IQKeyboardManagerSwift/IQKeyboardManagerSwift/Resources/IQKeyboardManager.bundle", "Sources/NVActivityIndicatorView/NVActivityIndicatorView/NVActivityIndicatorView/Images.xcassets"
s.frameworks = "UIKit", "Foundation", "CoreGraphics", "QuartzCore"
s.public_header_files = ["Sources/lottie-ios/lottie-ios/Classes/PublicHeaders/*.h"]
end
