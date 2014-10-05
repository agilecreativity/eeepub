# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "eeepub_ext"
  s.version     = "0.8.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["jugyo"]
  s.email       = ["agilecreativity@gmail.com"]
  # NOTE: the original location of the gem
  # s.homepage    = "http://github.com/jugyo/eeepub"
  # NOTE: the current location of the modified gem
  s.homepage    = "https://github.com/agilecreativity/eeepub"
  s.summary     = %q{ePub generator - with rubyzip bug fix (unofficial fork version)}
  s.description = %q{EeePub is a Ruby ePub generator.
                    This code is baded on the original eeepub version 0.8.1.
                    I added the bug fix to rubyzip to make it work with my own gem (source2epub).
                    This gem will be deprecated as soon as the original author (jugyo) merge
                    the pull request from the community with this change and many others fixes.}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency "builder", "~> 3.2.2"
  s.add_dependency "rubyzip", "~> 1.1.6"
  s.add_development_dependency "rspec", "~> 3.1.0"
  s.add_development_dependency "nokogiri", "~> 1.6.3.1"
  s.add_development_dependency "rr", "~> 1.1.2"
  s.add_development_dependency "simplecov", "~> 0.9.0"
  s.add_development_dependency "pry", "~> 0.10.1"
  s.add_development_dependency "pry-byebug", "~> 2.0.0" if RUBY_VERSION >= "2.0.0"
end
