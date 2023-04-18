When("I delete a user") do
    @delete_url = "https://jsonplaceholder.typicode.com/users/5"
    @deleteRequest = HTTParty.put(@delete_url, :headers => {'Content-Type': 'application/json'})
end

And("see successful response to delete with code {string}") do |status_code|
 expect(@deleteRequest.response.code).to eql status_code
end