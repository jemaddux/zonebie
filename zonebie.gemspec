# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zonebie/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andy Lindeman"]
  gem.email         = ["alindeman@gmail.com"]
  gem.description   = %q{Runs your tests in a random timezone}
  gem.summary       = %q{Zonebie prevents bugs in code that deals with timezones by randomly assigning a zone on every run}
  gem.homepage      = "https://github.com/highgroove/zonebie"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "zonebie"
  gem.require_paths = ["lib"]
  gem.version       = Zonebie::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~>2.8"
  gem.add_development_dependency "mocha", "~>0.10.0"

  gem.add_development_dependency "activesupport", ">=2.3"
  gem.add_development_dependency "tzinfo", ">=0.3"

  gem.add_dependency "chunky_png"
  gem.add_dependency "rainbow"
end
