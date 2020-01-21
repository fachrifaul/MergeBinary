plugin 'cocoapods-pod-merge'
plugin 'cocoapods-binary'

platform :ios, '12.0'

keep_source_code_for_prebuilt_frameworks!
enable_bitcode_for_prebuilt_frameworks!
use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/fachrifaul/MyAwesomeKit-Spec.git'

$pincache_version = '3.0.1-beta.7'
$texture_version = { :git => 'https://github.com/TextureGroup/Texture.git', :branch => 'releases/p8.0' }

workspace 'MergeBinary'

def pod_merge_ui_swift
  # Using pod-merge - fast pod install, slow clean build
  #  pod 'UISwift', path: 'MergedPods/UISwift'
  pod 'NetworkingSwift', path: 'MergedPods/NetworkingSwift'
  pod 'UtilSwift', path: 'MergedPods/UtilSwift'
  pod 'UtilObjc', path: 'MergedPods/UtilObjc'
  pod 'UIObjc', path: 'MergedPods/UIObjc'
  # Code UISwift with Pod-merge and make binary - slow first pod install (build pre-complie), fast clean build
  #  pod 'UISwift', '1.0.0', :binary => true
  
  # Binary UISwift - slow first pod install (download pre-compile), fast clean build - remote
  #  pod 'UISwift-Binary', '1.0.0'
  
  # Binary UISwift - slow first pod install (download pre-compile), fast clean build - local podspec
  pod 'UISwift-Binary', path: 'MergedPodsBinary/UISwift'
end

def core_pods
  pod_merge_ui_swift
  pod 'lottie-ios', '3.1.5', :binary => true
end

def feature_pods
  pod_merge_ui_swift
  pod 'lottie-ios', '3.1.5', :binary => true
  pod 'PINCache', $pincache_version, :binary => true
  pod 'PINOperation', '1.1.2', :binary => true
  pod 'PINRemoteImage', '3.0.0-beta.14', :binary => true
  pod 'Texture', $texture_version, :binary => true
end

def all_pods
  pod_merge_ui_swift
  core_pods
  feature_pods
  pod 'KeychainSwift', '18.0.0'
  pod 'Starscream', '3.1.1', :binary => true
  pod 'SwiftPhoenixClient', '1.2.0', :binary => true
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

## Static Frameworks:
## ============
##
## Make all pods that are not shared across multiple targets into static frameworks by overriding the static_framework? function to return true
## Linking the shared frameworks statically would lead to duplicate symbols
## A future version of CocoaPods may make this easier to do. See https://github.com/CocoaPods/CocoaPods/issues/7428
#shared_targets = [ 'Core']
#dynamic_pod = []
#pre_install do |installer|
#
#  installer.analysis_result.specifications.each do |specs|
#    specs.swift_version = '5.0'
#  end
#
#  static = []
#  dynamic = []
##  precompile = []
#
#  installer.pod_targets.each do |pod|
#    #    if !pod.build_settings.framework_search_paths.none?
#    #      precompile << pod
#    #      puts "#{pod.name} is precompile"
#    #    end
#    #    INSTALL_PATH
#    #    puts "#{pod.name} #{pod.build_settings.configuration_build_dir}"
#    # If this pod is a dependency of one of our shared targets, it must be linked dynamically
#    if pod.target_definitions.any? { |t| shared_targets.include? t.name }
#      dynamic << pod
#      #      puts "Overriding the dynamic_framework? method for #{pod.name} #{pod.build_settings.inpect}"
#      next
#    end
#
#    # Some pods must be dynamic
#    if dynamic_pod.include? pod.name
#      dynamic << pod
#      next
#    end
#
#    static << pod
#    pod.instance_variable_set(:@build_type, Pod::Target::BuildType.static_framework)
#    #    puts "Overriding the static_framework? method for #{pod.name} #{pod.build_settings.framework_search_paths}"
##    puts "#{pod.name} #{pod.framework_search_paths}"
#  end
#
#  puts "Installing #{static.count} pods as static frameworks"
#  puts "Installing #{dynamic.count} pods as dynamic frameworks"
##  puts "Installing #{precompile.count} pods as precompile frameworks"
#end
