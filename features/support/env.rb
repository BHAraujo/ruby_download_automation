require "byebug"
require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
require "cucumber"
require "site_prism"
require_relative "helpers_pages.rb"
require_relative "helpers.rb"
require_relative "browsers_profile.rb"

World(HelperPages)
World(Helpers)

ENVIRONMENT = YAML.load_file("cucumber.yml")

Capybara.register_driver :selenium do |app|
 Capybara::Selenium::Driver.new(app, :browser => ENVIRONMENT["browser"].to_sym, timeout: 30)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "https://www.ruby-lang.org"
  config.default_max_wait_time = 30
end
