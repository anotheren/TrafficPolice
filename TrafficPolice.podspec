Pod::Spec.new do |s|
  s.name = 'TrafficPolice'
  s.version = '0.3.0'
  s.license = 'MIT'
  s.summary = 'A Media Develop Kit'
  s.homepage = 'https://github.com/anotheren/TrafficPolice'
  s.authors = { 'Liu Dong' => 'liudong.edward@gmail.com' }
  s.source = { :git => 'git@github.com:anotheren/TrafficPolice.git', :tag => '0.3.0' }

  s.ios.deployment_target = '9.0'

  s.source_files = 'TrafficPolice/Source/**/*.swift'

  s.requires_arc = true
end
