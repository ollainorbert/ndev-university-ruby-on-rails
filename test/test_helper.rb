ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  
  # I commented this out, because with the Devise's admin model,
  # they didn't really like each other
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end
