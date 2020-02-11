Before ('@cleardownload') do
    system("rm -f #{Dir.home}/Downloads/ruby-2.*")
end

After do |feature|
  Capybara.current_session.driver.quit
end

After do |scenario|
  if scenario.failed?
     tirar_foto(scenario.name.gsub(' ', '_'), "Falhou")
   else
     tirar_foto(scenario.name.gsub(' ', '_'), "Passou")
   end
end
