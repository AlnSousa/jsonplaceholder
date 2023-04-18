ph_api = PlaceholderAPI.new

When("I make get request on the endpoint") do
  @resultRequest = ph_api.getUsers
end

And("see {string} as StatusCode") do |status_code|
  expect(@resultRequest.response.code).to eql status_code
end

Then("I show the id and name") do
    parsed_response = JSON.parse(@resultRequest.body)
    puts "Id: #{parsed_response['id']}"
    puts "Name: #{parsed_response['name']}"
end