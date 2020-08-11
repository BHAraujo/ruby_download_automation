require "allure-cucumber"
require "byebug"
require "capybara"
require 'capybara/cucumber'
require "cucumber"
require "selenium-webdriver"
require "site_prism"
require "httparty"
require "rspec"

require_relative "browsers_profile.rb"
require_relative "helpers_pages.rb"
require_relative "helpers.rb"
require_relative "helpers_requests.rb"


World(HelperPages)
World(HelperRequests)
World(Helpers)


ENVIRONMENT = YAML.load_file("cucumber.yml")
BROWSER = ENVIRONMENT["browser"]


case BROWSER.downcase
  when "chrome"
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30, options: chrome_profile)
    end
  when "chrome_headless"
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30, options: chrome_profile_headless)
    end

end

Capybara.configure do |config|
  config.default_driver = define_browser(ENVIRONMENT["browser"])
  config.app_host = ENVIRONMENT["url"]
  config.default_max_wait_time = 30
end

Allure.configure do |c|
  c.results_directory = "/reports"
  c.clean_results_directory = true
  c.logging_level = Logger::INFO
end
