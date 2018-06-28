# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stackprof/run/version'

Gem::Specification.new do |spec|
  spec.name          = "stackprof-run"
  spec.version       = Stackprof::Run::VERSION
  spec.authors       = ["Masataka Kuwabara"]
  spec.email         = ["p.ck.t22@gmail.com"]

  spec.summary       = %q{Run a ruby script with stackprof.}
  spec.description   = %q{Run a ruby script with stackprof.}
  spec.homepage      = "https://github.com/pocke/stackprof-run"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.licenses = ['CC0-1.0']

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_runtime_dependency 'stackprof', ' >= 0.2.10'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
