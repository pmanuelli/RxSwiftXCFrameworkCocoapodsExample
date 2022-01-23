Pod::Spec.new do |s|
  s.name             = "RxCocoaRuntime"
  s.version          = "6.5.0-xcframework"
  s.summary          = "RxCocoaRuntime"
  s.description      = <<-DESC
  RxCocoaRuntime
                        DESC
  s.homepage         = "https://github.com/ReactiveX/RxSwift"
  s.license          = 'MIT'
  s.author           = { "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :http => "https://github.com/ReactiveX/RxSwift/releases/download/6.2.0/#{s.name}.xcframework.zip" }

  s.requires_arc          = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target = '9.0'

  s.vendored_frameworks = "#{s.name}.xcframework"

  s.dependency 'RxSwift', s.version.to_s

  s.swift_version = '5.1'
end