def define_browser(browser)
  dict_browser = {"chrome" => :chrome, "chrome_headless" => :selenium_chrome_headless}
  dict_browser[browser]
end


def chrome_profile
   profile = Selenium::WebDriver::Chrome::Options.new(args: %w[disable-popup-blocking])
   profile
end

def chrome_profile_headless
   profile = Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
   profile
end

def firefox_profile
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile["marionette"] = True
end

def firefox_profile_headless
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile["marionette"] = True
  profile["--headless"]
end
