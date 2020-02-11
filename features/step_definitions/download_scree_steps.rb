And("download version Ruby {string}") do |version|
    @version = version
    download_screen_page.link_version(@version).click
    @ruby_hash = RUBY_VERSION_HASHES[@version]
    @path_download = "#{Dir.home}/Downloads/ruby-#{@version}.tar.gz"

    Allure.add_attachment(name: "attachment", source: attach_file("title", "file.png"), type: Allure::ContentType::PNG, test_case: false)
end
