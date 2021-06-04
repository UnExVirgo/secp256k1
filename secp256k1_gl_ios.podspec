
Pod::Spec.new do |s|
  s.name                       = 'secp256k1_gl_ios'
  s.homepage                   = 'https://github.com/UnExVirgo/secp256k1'
  s.summary                    = 'secp256k1, support pod'
  s.description                = 'secp256k1, support pod.'
  s.author                     = { 'liujunliuhong' => '1035841713@qq.com' }
  s.version                    = '1.0.2'
  s.source                     = { :git => 'https://github.com/UnExVirgo/secp256k1.git', :tag => s.version.to_s }
  s.platform                   = :ios, '10.0'
  s.license                    = { :type => 'MIT', :file => 'LICENSE' }
  s.module_name                = 'secp256k1_ios'
  s.swift_version              = '5.0'
  s.ios.deployment_target      = '10.0'
  s.requires_arc               = true
  s.static_framework           = true
  s.vendored_libraries         = 'secp256k1_ios/*.a'
  s.source_files               = 'secp256k1_ios/*.h'
  s.pod_target_xcconfig        = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1_ios"'
  }
  s.public_header_files        = 'secp256k1_ios/*.h'
  s.user_target_xcconfig       = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
