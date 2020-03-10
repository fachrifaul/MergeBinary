
        Pod::Spec.new do |s|
          s.name             = 'UIObjc'
          s.version          = '1.0.0'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["SDWebImage", "iCarousel"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'GrabTaxi Pte Ltd' => 'dummy@grabtaxi.com' }
          s.source           = { :git => 'https://github.com/grab/cocoapods-pod-merge', :tag => '1.0.0' }
          s.ios.deployment_target =  '12.0'
          s.source_files = 'Sources/**/*.{h,m,mm,swift,c}'
        
s.module_map = 'Sources/module.modulemap'
s.frameworks = "ImageIO", "QuartzCore"
end
