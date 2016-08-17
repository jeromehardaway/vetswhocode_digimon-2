
Gem::Specification.new do |s|
  s.name         = "Test_Studio_Game"
  s.version      = "Test_Version_1.0.0"
  s.author       = "Y'Eli Buonya"
  s.email        = "yeli.e.buonya@gmail.com"
  s.homepage     = "https://twitter.com/ItsMeMrLi"
  s.summary      = "Test Gem for Pragmatic studios course"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['NOne']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
