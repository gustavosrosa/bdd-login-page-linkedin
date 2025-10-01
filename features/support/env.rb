require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers

World(Page)

Env = ENV['URL']

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = Env
    config.default_max_wait_time = 5
end