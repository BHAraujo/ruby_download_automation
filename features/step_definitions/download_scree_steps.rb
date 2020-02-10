And("download version Ruby {string}") do |version|
  byebug
  page.click_link("#{RUBY_VERSION}#{version[0..2]}/ruby-#{version}.tar.gz")
end
