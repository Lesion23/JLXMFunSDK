Pod::Spec.new do |spec|
  spec.name         = "JLXMFunSDK"
  spec.version      = "0.0.2"
  spec.summary      = "This is the Swift package of FunSDK."
  spec.description  = <<-DESC
  雄迈SDK组件，方便项目解耦
  pod 'JLXMFunSDK'
                   DESC

  spec.homepage     = "https://github.com/Lesion23/JLXMFunSDK"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Lesion" => "lesionxue@gmail.com" }
  spec.source       = { :git => "https://github.com/Lesion23/JLXMFunSDK.git", :tag => spec.version.to_s }
  spec.ios.deployment_target = "13.0"

  spec.source_files  = "JLXMFunSDK/JLXMFunSDK/Classes/*.{h,m,.mm}"
  spec.frameworks = ['UIKit','AVFoundation','OpenGLES','GLKit','VideoToolbox','OpenAL','MediaPlayer','CoreMedia','AudioToolBox','UserNotifications','AssetsLibrary','AVKit',]
  spec.libraries = 'resolv','bz2','iconv','c', 'z'#'c.tbd','z.tbd',
  # spec.vendored_frameworks = ['JLXMFunSDK/JLXMFunSDK/Supporting/*.framework']
  # spec.vendored_libraries = ['JLXMFunSDK/JLXMFunSDK/Supporting/libstdc++.6.0.9.tbd', 'JLXMFunSDK/JLXMFunSDK/Supporting/libzbar.a']
  spec.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  spec.pod_target_xcconfig = {'ENABLE_BITCODE' => 'NO','BUILD_ACTIVE_ARCHITURE_ONLY'=>'YES'}

end

