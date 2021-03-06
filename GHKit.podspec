Pod::Spec.new do |spec|
  spec.name = 'GHKit'
  spec.version = '0.0.4'
  spec.summary = 'GHKit framework for version checks using GitHub releases'
  spec.homepage = 'https://github.com/4np/GHKit'
  spec.license = { type: 'APACHE', file: 'LICENSE' }
  spec.authors = { "Jeroen Wesbeek" => 'github@osx.eu' }
  spec.documentation_url = 'https://github.com/4np/GHKit/blob/master/README.md'

  spec.platforms = { :ios => '12.0', :osx => '13.0', :tvos => '12.0' }
  spec.requires_arc = true
  spec.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
  spec.source = { :git => 'https://github.com/4np/GHKit.git', :tag => "#{spec.version}" }

  spec.default_subspecs = 'Core'

  # main GHKit Framework
  spec.subspec 'Core' do |core|
    core.source_files = 'Sources/GHKit/**/*.{swift}'
  end
end
