And("wait {int} seconds for download of file") do |time|
  3.times do |verify|
    sleep(time)
    if File.exist?(@path_download) == true
      break
    elsif verify == 2
      raise "Download file incomplete"
    end
  end
end

Then("validate sha256 of the downloaded file") do
    get_hash_file = "sha256sum #{Dir.home}/Downloads/ruby-#{@version}.tar.gz"
    ruby_hash_downloaded = %x[#{get_hash_file}].split(" ")
    expect(ruby_hash_downloaded[0]).to eql(@ruby_hash)
    puts @ruby_hash.to_s
end

Then("http status code {int}") do |status_code|
  expect(@response.code).to eql(200)
end
