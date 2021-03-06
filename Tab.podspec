Pod::Spec.new do |s|
  s.name = 'Tab'
  s.version = '0.0.2'
  s.license = 'MIT'

  s.summary = 'Easy to use functional tab bar for swift projects.'
  s.homepage = 'https://github.com/LenisDev/TabBar'
  s.authors = { 'Manish Pandey' => '' }
  
  s.source = { :git => 'https://github.com/LenisDev/TabBar.git', :tag => s.version }
  s.documentation_url = 'https://lenisdev.github.io/TabBar/index.html'

  s.ios.deployment_target = '10.0'

  s.swift_versions = ['5.1']

  s.source_files = 'TabBar/TabBar/**/*.swift'

end
