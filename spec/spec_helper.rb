# frozen_string_literal: true

require 'simplecov'
require 'coveralls'
require 'fileutils'

module SimpleCov
  module Configuration
    def clean_filters
      @filters = []
    end
  end
end

SimpleCov.configure do
  clean_filters
end

require 'simplecov-hashcov'
SimpleCov.formatter = SimpleCov::Formatter::HashFormatter
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rspec'
