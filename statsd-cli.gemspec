# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "statsd-cli/version"

Gem::Specification.new do |s|
  s.name        = "statsd-cli"
  s.version     = StatsdCLI::VERSION
  s.authors     = ["Dotan Nahum"]
  s.email       = ["jondotan@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Report statsd metrics with commandline Statsd}
  s.description = %q{Report statsd metrics with commandline Statsd}

  s.rubyforge_project = "statsd-cli"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "statsd-ruby"
  s.add_runtime_dependency "slop"
end
