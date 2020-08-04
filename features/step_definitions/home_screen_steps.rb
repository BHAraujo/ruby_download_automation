Given("is Ruby site") do
  home_screen_page.load
end

When("click in link DOWNLOAD") do
  home_screen_page.link_download_click
   # tirar_foto("teste", "foto")
   Allure.add_attachment(
    name: "filename",
  source: File.open("/home/brunoaraujo/Documents/Pessoal/Projects/Automation/ruby_download_automation/reports/screenshots/foto/teste.png"),
  type: Allure::ContentType::PNG,
   test_case: true
)
end
