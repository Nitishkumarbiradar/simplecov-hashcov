# frozen_string_literal: true

raise 'simplecov-hashcov requires simplecov' unless defined?(SimpleCov)

require 'dry-configurable'

# Custom Formatter to generate hash list of coverage for simplecov
class Hashcov
  extend Dry::Configurable

  setting :after_format_callback, reader: true

  VERSION = '0.0.1'
end

module SimpleCov
  module Formatter
    class HashFormatter
      #
      # A ridiculously simple formatter  hash formatter for SimpleCov results.
      # Can use a callback to, for example, create issues on GitHub.
      #
      # Takes a SimpleCov::Result and generates a hash out of it
      def format(result)
        output = {}
        result.groups.each do |name, files|
          output[name] ||= []
          files.each do |file|
            output[name] << [file.filename, file.covered_percent.round(2)]
          end
        end
        Hashcov.after_format_callback.call(output)
        output
      end
    end
  end
end
