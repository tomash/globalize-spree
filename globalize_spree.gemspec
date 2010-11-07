Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'globalize_spree'
  s.version     = '0.1.0'
  s.summary     = 'Globalize3-Spree integration'
  s.description = 'the name says it all'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Tomasz "Tomash" Stachewicz'
  s.email             = 'tomekrs@o2.pl'
  s.homepage          = 'http://tomash.wrug.eu'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('i18n', '>= 0.4.2')
  s.add_dependency('globalize3', '>= 0.0.9')
  s.add_dependency('spree_core', '>= 0.30.0.beta2')
end