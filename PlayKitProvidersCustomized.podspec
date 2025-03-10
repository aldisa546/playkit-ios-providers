
Pod::Spec.new do |s|
  
  s.name             = 'PlayKitProvidersCustomized'
  s.version          = '1.19.2' + suffix
  s.summary          = 'PlayKitProvidersCustomized -- Providers framework for iOS'
  s.homepage         = 'https://github.com/aldisa546/playkit-ios-providers'
  s.license          = { :type => 'AGPLv3', :file => 'LICENSE' }
  s.author           = { 'Aldi' => 'aldisa546@gmail.com' }
  s.source           = { :git => 'https://github.com/aldisa546/playkit-ios-providers.git', :tag => 'v' + s.version.to_s }
  s.swift_version     = '5.0'

  s.ios.deployment_target = '15.0'
  s.tvos.deployment_target = '15.0'

  s.source_files = 'Sources/**/*'
  
  s.dependency 'KalturaNetKit', '~> 1.7.0'
  s.dependency 'PlayKitUtils', '~> 0.7'
  s.dependency 'SwiftyXMLParser', '5.6.0'
end

