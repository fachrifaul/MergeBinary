
        Pod::Spec.new do |s|
          s.name             = 'UtilSwift'
          s.version          = '1.0.0'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["CocoaLumberjack", "KeychainSwift", "RNCryptor", "SwiftyJSON", "SwiftyRSA", "ObjectMapper", "DeviceGuru", "Parchment", "PromisesSwift", "PromisesObjC"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'GrabTaxi Pte Ltd' => 'dummy@grabtaxi.com' }
          s.source           = { :git => 'https://github.com/fachrifaul/MergeBinary.git' }
          s.ios.deployment_target = '8.0'
          s.source_files = 'MergedPods/UtilSwift/Sources/**/*.{h,m,mm,swift}'
        
s.swift_version = ["5.0"]
s.frameworks = "Security"
s.private_header_files = "MergedPods/UtilSwift/Sources/CocoaLumberjack/DD*Internal.{h}", "MergedPods/UtilSwift/Sources/PromisesObjC/Sources/FBLPromises/include/FBLPromisePrivate.h"
s.resource_bundles = {"DeviceGuru"=>["MergedPods/UtilSwift/Sources/DeviceGuru/Source/DeviceList.plist"]}
end
