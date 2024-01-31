# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'whatsapp_sdk/rails/version'

Gem::Specification.new do |spec|
  spec.name = 'whatsapp_sdk_rails'
  spec.version = WhatsappSdk::Rails::VERSION

  spec.authors = ['Paulo McNally']
  spec.email = ['paulomcnally@gmail.com']

  spec.summary = 'Rails support for whatsapp_sdk'
  spec.description =
    'Rails support for the whatsapp_sdk gem, helping you configure ' \
    'your application logic.'
  spec.licenses = ['MIT']

  spec.homepage = 'https://github.com/paulomcnally/ruby_whatsapp_sdk_rails'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.required_ruby_version = '>= 3.1'

  spec.require_paths = ['lib']
  spec.extra_rdoc_files = %w[
    LICENSE.txt
    README.md
  ]

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z lib`.split("\x0")
  end

  # Sdk
  spec.add_dependency 'whatsapp_sdk'

  # Rails
  spec.add_dependency 'railties', '>= 4.2'

  # Tests
  spec.add_development_dependency 'rspec'

  # Test command-line applications
  spec.add_development_dependency 'aruba'

  # Development Tasks
  spec.add_development_dependency 'rake'

  # Debugger
  spec.add_development_dependency 'pry'

  # Linting
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
