# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'simple_gravatar'
  s.version     = '0.1.0'
  s.authors     = ['Patricio Mac Adden']
  s.email       = ['patriciomacadden@gmail.com']
  s.homepage    = 'https://github.com/patriciomacadden/simple_gravatar'
  s.summary     = %q{Add gravatars to your ruby project as simple as possible.}
  s.description = %q{Add gravatars to your ruby project as simple as possible.}

  s.rubyforge_project = 'simple_gravatar'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.5.0'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end
