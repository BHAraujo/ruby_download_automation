Dir[File.join(File.dirname(__FILE__), "../pages/*_screen_page.rb")].each{ |file| require file}

module HelperPages

  def home_screen_page
    @home_screen_page ||= HomePage::new
  end

  def download_screen_page
    @download_screen_page ||= DownloadPage::new
  end
end
