class DownloadPage < SitePrism::Page
  set_url ""

  element :link_twenty_seven, "#content > ul:nth-child(10) > li:nth-child(1) > ul > li:nth-child(1) > a"
  element :link_twenty_six_five, "#content > ul:nth-child(10) > li:nth-child(1) > ul > li:nth-child(2) > a"
  element :link_twenty_six_five_seven, "#content > ul:nth-child(10) > li:nth-child(1) > ul > li:nth-child(3) > a"


  def link_version(version)
    dict_version = {"2.7.0": link_twenty_seven, "2.6.5": link_twenty_six_five,
                    "2.5.7": link_twenty_six_five_seven}
    dict_version[version.to_sym]
  end

end
