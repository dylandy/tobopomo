# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tobopomo/version'

Gem::Specification.new do |spec|
  spec.name          = "tobopomo"
  spec.version       = Tobopomo::VERSION
  spec.authors       = ["dylandy.chang"]
  spec.email         = ["dylandy.chang@gmail.com"]
  spec.licenses      = ["LGPL-3.0"]

  spec.summary       = %q{An api for convert latin alphabet straight to bopomo script and Chinese characters.}
  spec.description   = %q{An input method api for converting latin alphabet into human readable bopomo script and Chinese characters.}
  spec.homepage      = "https://github.com/dylandy/tobopomo"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://rubygems.org'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
