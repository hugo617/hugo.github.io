# Preload stdlib logger to avoid NameError in Rails 6.1 + Ruby 2.6 on macOS
require 'logger'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
# require 'bootsnap/setup' # Temporarily disabled to avoid native build issues

