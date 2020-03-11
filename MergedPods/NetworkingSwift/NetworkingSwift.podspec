
        Pod::Spec.new do |s|
          s.name             = 'NetworkingSwift'
          s.version          = '1.0.0'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["Alamofire", "Starscream", "SwiftPhoenixClient"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'GrabTaxi Pte Ltd' => 'dummy@grabtaxi.com' }
          s.source           = { :git => 'https://github.com/grab/cocoapods-pod-merge', :tag => '1.0.0' }
          s.ios.deployment_target =  '10.0'
          s.source_files = 'Sources/**/*.{h,m,mm,swift,c}'
        
s.swift_version = ["5.0"]
end
