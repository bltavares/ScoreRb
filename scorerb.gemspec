# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "scorerb/version"

Gem::Specification.new do |s|
  s.name        = "scorerb"
  s.version     = Scorerb::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bruno Tavares"]
  s.email       = ["bruno.exz@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Simple fuzzy search for your strings}
  s.description = %q{With that gem you have the ability to check one string against other and get the score}


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec', '~> 2.5.0'
end
