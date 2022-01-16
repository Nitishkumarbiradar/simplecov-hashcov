# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'simplecov-hashcov'
  s.version = '0.8.0'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.require_paths = ['lib']
  s.authors = ['Sampo Kuokkanen']
  s.date = '2022-01-16'
  s.description = 'Custom SimpleCov formatter to use a callback to create issues on GitHub.'
  s.email = 'sampo@sampo.ltd'
  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  s.homepage = 'http://github.com/fortissimo1997/simplecov-lcov'
  s.licenses = ['MIT']
  s.rubygems_version = '0.0.1'
  s.summary = 'Custom hash formatter to generate coverage result and then call a callback on it.'

  s.add_dependency 'dry-configurable'
  s.add_dependency('simplecov', ['~> 0.18'])
  s.add_development_dependency 'rubocop', '~> 0.64'
  s.add_development_dependency 'rubocop-rspec', '~> 0.64'
  s.add_development_dependency 'rubocop-shopify'
end
