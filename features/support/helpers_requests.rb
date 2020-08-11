Dir[File.join(File.dirname(__FILE__), "../requests/*_request.rb")].each { |file| require file}

module HelperRequests

  def neighborhood_requests
    @neighborhood_requests ||= NeighborhoodRequests::new
  end

end
