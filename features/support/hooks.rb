Before ('@cleardownload') do
    system("rm -f #{Dir.home}/Downloads/ruby-2.*")
end

After do |feature|
  Capybara.current_session.driver.quit
end
