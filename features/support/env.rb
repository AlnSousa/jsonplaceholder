require "httparty"

class PlaceholderAPI
  include HTTParty
  base_uri "https://jsonplaceholder.typicode.com"

  def getUsers()
    @getUsers = self.class.get(
      "/users/2"
    )
  end 
end