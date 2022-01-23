Pod::Spec.new do |s|
  s.name             = "RxBlocking"
  s.version          = "6.5.0-xcframework"
  s.summary          = "RxSwift Blocking operatos"
  s.description      = <<-DESC
Set of blocking operators for RxSwift. These operators are mostly intended for unit/integration tests
with a couple of other special scenarios where they could be useful.
E.g.
Waiting for observable sequence to complete before exiting command line application.
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

  s.swift_version = '5.1'
end