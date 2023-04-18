When("I make a request to update user info") do
    @put_url = "https://jsonplaceholder.typicode.com/users/1"
    @updateRequest = HTTParty.put(@put_url, :headers => {'Content-Type': 'application/json'}, body: {
        "name": "Leanne Graham",
        "username": "Treb",
        "email": "April@sincere.biz",
    }.to_json)
end

And("see successful response with code {string}") do |status_code|
 expect(@updateRequest.response.code).to eql status_code
end