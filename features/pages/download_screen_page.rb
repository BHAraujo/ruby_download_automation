class DownloadPage < SitePrism::Page
  set_url ""

  element :twenty_seven_hash, :xpath, "//*[@id='content']/ul[2]/li[1]/ul/li[1]/text()"
  element :twenty_six_five_hash, :xpath, "//*[@id='content']/ul[2]/li[1]/ul/li[2]/text()"
  element :twenty_six_five_seven, :xpath, "//*[@id='content']/ul[2]/li[1]/ul/li[3]/text()"

  def hash_version(version)
    dict_hash = {"2.7.0": twenty_seven_hash.text, "2.6.5": twenty_six_five_hash.text, "2.5.7": twenty_six_five_seven.text}
    dict_hash[version.to_sym]
  end

end
