def chrome_profile
   profile = Selenium::WebDriver::Chrome::Options.new
end

def firefox_profile
  profile = Selenium::WebDriver::Firefox::Profile.new
end
