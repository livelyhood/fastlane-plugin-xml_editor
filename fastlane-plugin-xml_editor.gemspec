# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/xml_editor/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-xml_editor'
  spec.version       = Fastlane::XmlEditor::VERSION
  spec.author        = %q{Jonathan Ritchie}
  spec.email         = %q{jonathan.ritchie@orionhealth.com}

  spec.summary       = %q{Generic xml editor for iOS and Android projects.}
  spec.homepage      = "https://github.com/jonathanneilritchie/fastlane-plugin-xml_editor"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'plist', '~> 3.3.0'
  spec.add_dependency 'nokogiri', '~> 1.18.4'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.14.2'
end
