Given("request by pass {string}") do |cep|
  @response = neighborhood_requests.get(cep)
  @body = JSON.parse(@response.body)
end

Then("validate return body") do |table|
  expect(@body["cep"].gsub("-", "")).to eql( table.hashes[0]["cep"])
  expect(@body["logradouro"]).to eql( table.hashes[0]["logradouro"])
  expect(@body["bairro"]).to eql( table.hashes[0]["bairro"])
  expect(@body["localidade"]).to eql( table.hashes[0]["localidade"])
  expect(@body["uf"]).to eql( table.hashes[0]["uf"])
end
