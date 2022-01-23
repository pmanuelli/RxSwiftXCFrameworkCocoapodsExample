Pod::Spec.new do |s|
  s.name             = "RxCocoa"
  s.version          = "6.5.0-xcframework"
  s.summary          = "RxSwift Cocoa extensions"
  s.description      = <<-DESC
* UI extensions
* NSURL extensions
* KVO extensions
                        DESC
  s.homepage         = "https://github.com/ReactiveX/RxSwift"
  s.license          = 'MIT'
  s.author           = { "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :http => "https://github.com/ReactiveX/RxSwift/releases/download/6.5.0/#{s.name}.xcframework.zip" }

  s.requires_arc          = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target = '9.0'

  s.vendored_frameworks = "#{s.name}.xcframework"

  s.dependency 'RxSwift', s.version.to_s
  s.dependency 'RxRelay', s.version.to_s

  # RxCocoaRuntime is not originally set as a dependency on cocoapods
  # But it is set as a dependency on SPM, so I think it makes sense to put it here
  s.dependency 'RxCocoaRuntime', s.version.to_s

  s.swift_version = '5.1'
end