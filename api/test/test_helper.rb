ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

# gem 'minitest-reporters' setup
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  parallelize_setup do |worker|
    load "#{Rails.root}/db/seeds.rb"
  end
  
  parallelize(workers: :number_of_processors)

end
