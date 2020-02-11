require "httparty"
require "byebug"

class NeighborhoodRequests
  include HTTParty
  base_uri "https://viacep.com.br/ws"
  attr_reader :options

  @@options = {"Content-type" => "application/json"}

  def get(postcode)
    self.class.get("/#{postcode}/json", :headers => @@options)
  end

end
