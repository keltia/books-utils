# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'books/utils/version'

Gem::Specification.new do |spec|
  spec.name          = "books-utils"
  spec.version       = Books::Utils::VERSION
  spec.authors       = ["Ollivier Robert"]
  spec.email         = ["roberto@keltia.net"]
  spec.summary       = %q{Calibre and ebooks related utilities.}
  spec.description   = %q{Utilities that use/enhance calibre for ebooks.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'sqlite3'
  spec.add_runtime_dependency 'oj'
end
