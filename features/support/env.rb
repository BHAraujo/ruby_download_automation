require "byebug"
require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
require "cucumber"
require "site_prism"
require_relative "helpers_pages.rb"
require_relative "helpers.rb"

World(HelperPages)
World(Helpers)


Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "https://www.ruby-lang.org"
  config.default_max_wait_time = 5
end
