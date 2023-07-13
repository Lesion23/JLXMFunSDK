Pod::Spec.new do |spec|
  spec.name         = "JLXMFunSDK"
  spec.version      = "0.0.1"
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

end
