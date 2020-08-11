class HomePage < SitePrism::Page

  set_url "/pt/"

  element :link_download, "#intro > a.download-link"

  def link_download_click
    link_download.click
  end

end
