
        Pod::Spec.new do |s|
          s.name             = 'UIObjc'
          s.version          = '1.0.5'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["SDWebImage", "iCarousel"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'Fachri Febrian' => 'fachripaul@gmail.com' }
          s.source           = { :git => 'https://github.com/fachrifaul/MergeBinary.git' }
          s.ios.deployment_target =  '10.0'
          s.source_files = 'MergedPods/UIObjc/Sources/**/*.{h,m,mm,swift,c}'
        
s.module_map = 'MergedPods/UIObjc/Sources/module.modulemap'
s.frameworks = "ImageIO", "QuartzCore"
end
