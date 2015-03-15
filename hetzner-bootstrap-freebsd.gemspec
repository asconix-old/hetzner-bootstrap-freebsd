# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hetzner/bootstrap/freebsd/version"

Gem::Specification.new do |s|
  s.name        = "hetzner-bootstrap-freebsd"
  s.version     = Hetzner::Bootstrap::FreeBSD::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christoph Pilka"]
  s.email       = ["c.pilka@asconix.com"]
  s.homepage    = "http://www.asconix.com"
  s.summary     = %q{Bootstrapping of the root servers at Hetzner with FreeBSD}
  s.description = %q{Bootstrapping of the root servers at Hetzner with FreeBSD}

  s.add_dependency 'hetzner-api', '~> 1.1.0'
  s.add_dependency 'net-ssh', '~> 2.9.2'
  s.add_dependency 'erubis', '~> 2.7.0'
  s.add_dependency 'colorize', '~> 0.7.5'
  s.add_dependency 'highline', '~> 1.7.1'

  s.add_development_dependency "rspec", "~> 3.2.0"
  s.add_development_dependency "rake"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
