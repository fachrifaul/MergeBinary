plugin 'cocoapods-pod-merge'
plugin 'cocoapods-binary'

platform :ios, '10.0'

keep_source_code_for_prebuilt_frameworks!
enable_bitcode_for_prebuilt_frameworks!
use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/fachrifaul/MyAwesomeKit-Spec.git'

$pincache_version = '3.0.1-beta.7'
$texture_version = { :git => 'https://github.com/TextureGroup/Texture.git', :branch => 'releases/p8.0' }

workspace 'MergeBinary'

def pod_merge
  # Using pod-merge - fast pod install, slow clean build
  #  pod 'UISwift', path: 'MergedPods/UISwift'
  #  pod 'NetworkingSwift', path: 'MergedPods/NetworkingSwift'
  #  pod 'UtilSwift', path: 'MergedPods/UtilSwift'
    pod 'UtilObjc', path: 'MergedPods/UtilObjc'
  #  pod 'UIObjc', path: 'MergedPods/UIObjc'
  
  # Code UISwift with Pod-merge and make binary - slow first pod install (build pre-complie), fast clean build
  pod 'UISwift','~> 1.0.0', :binary => true
  pod 'NetworkingSwift','~> 1.0.0', :binary => true
  pod 'UtilSwift','~> 1.0.0', :binary => true
#  pod 'UtilObjc', :binary => true # still cannot build
  pod 'UIObjc','~> 1.0.0', :binary => true
  
  # Binary UISwift - slow first pod install (download pre-compile), fast clean build - remote
  #  pod 'UISwift-Binary', '~> 1.0.0'
  #  pod 'NetworkingSwift-Binary', '~> 1.0.0'
  #  pod 'UtilSwift-Binary', '~> 1.0.0'
  #  pod 'UtilObjc-Binary' // still cannot build
  #  pod 'UIObjc-Binary', '~> 1.0.0'
  
  # Binary UISwift - slow first pod install (download pre-compile), fast clean build - local podspec
  #  pod 'UISwift-Binary', path: './'
  #  pod 'NetworkingSwift-Binary', path: './'
  #  pod 'UtilSwift-Binary', path: './'
  #  pod 'UtilObjc-Binary', path: 'MergedPodsBinary/UtilObjc' // still cannot build
  #  pod 'UIObjc-Binary', path: './'
end

def core_pods
  pod_merge
end

def feature_pods
  pod_merge
#  pod 'PINCache', $pincache_version, :binary => true
#  pod 'PINOperation', '1.1.2', :binary => true
#  pod 'PINRemoteImage', '3.0.0-beta.14', :binary => true
#  pod 'Texture', $texture_version, :binary => true
end

def all_pods
  pod_merge
  core_pods
  feature_pods
  pod 'KeychainSwift', '18.0.0'
end

target 'MergeBinary' do
  
  all_pods
  
  target 'MergeBinaryTests' do
    inherit! :search_paths
    all_pods
  end
  
end

target 'Core' do
  project 'Core/Core.xcodeproj'
  core_pods
  
  target 'CoreTests' do
    inherit! :search_paths
    
  end
  
end

target 'Feature' do
  project 'Feature/Feature.xcodeproj'
  feature_pods
  
  target 'FeatureTests' do
    inherit! :search_paths
    
  end
  
end
