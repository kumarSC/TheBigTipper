Pod::Spec.new do |s|
  s.module_name = 'TheBigTipper'
  s.name = 'TheBigTipper'
  s.version = '0.0.2'
  s.license = 'MIT'
  s.summary = 'Fake data generator in Swift'
  s.homepage = 'https://www.atlassian.com'
  s.authors = { 'Sushant Choudhary' => 'schoudhary@atlassian.com' }
  s.source = {  :git => 'https://github.com/kumarSC/TheBigTipper.git', :tag => s.version}
  s.source_files = 'TheBigTipper/**/*.{swift}'
  s.resource_bundle = { "BigTipper" => ["TheBigTipper/**/*.lproj"] }
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
end
