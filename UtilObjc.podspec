
        Pod::Spec.new do |s|
          s.name             = 'UtilObjc'
          s.version          = '1.0.0'
          s.summary          = 'Merged Pod generated by cocoapods pod-merge plugin'
          s.description      = 'Merged Framework containing the pods: ["PINCache", "PINOperation", "TrustKit"]'
          s.homepage         = 'https://github.com/grab/cocoapods-pod-merge'
          s.license          = { :type => 'MIT', :text => 'Merged Pods by cocoapods-pod-merge plugin  ' }
          s.author           = { 'GrabTaxi Pte Ltd' => 'dummy@grabtaxi.com' }
          s.source           = { :git => 'https://github.com/fachrifaul/MergeBinary.git'}
          s.ios.deployment_target = '10.0'
          s.source_files = 'MergedPods/UtilObjc/Sources/**/*.{h,m,mm,swift}'
        
s.module_map = 'MergedPods/UtilObjc/Sources/module.modulemap'
s.frameworks = "Foundation", "Security"
s.prefix_header_contents = "#ifndef TARGET_OS_WATCH\n  #define TARGET_OS_WATCH 0\n#endif"
s.private_header_files = "MergedPods/UtilObjc/Sources/TrustKit/TrustKit/Dependencies/domain_registry/private/trie_node.h", "MergedPods/UtilObjc/Sources/TrustKit/TrustKit/Dependencies/domain_registry/domain_registry.h"
end
