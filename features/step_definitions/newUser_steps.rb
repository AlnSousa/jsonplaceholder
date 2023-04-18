When("I create a new user") do
    @post_url = "https://jsonplaceholder.typicode.com/users"
    body = {
        name: 'Leanne Graham',
        username: 'Bret',
        email: 'Sincere@april.biz',
        address: {
          street: 'Kulas Light',
          suite: 'Apt. 556',
          city: 'Gwenborough',
          zipcode: '92998-3874',
          geo: {
            lat: '-37.3159',
            lng: '81.1496'
          }
        },
        phone: '1-770-736-8031 x56442',
        website: 'hildegard.org',
        company: {
          name: 'Romaguera-Crona',
          catchPhrase: 'Multi-layered client-server neural-net',
          bs: 'harness real-time e-markets'
        }
      }
      @createRequest = HTTParty.post(@post_url, body: body.to_json, headers: { 'Content-Type' => 'application/json' })
      puts @createRequest.body
end

And("see {string} as code response") do |status_code|
 expect(@createRequest.response.code).to eql status_code
end
