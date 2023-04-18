Feature: Get user

    As an admin I want to get a user data by id

    @get_users
    Scenario: Verify UserInfo
        When I make get request on the endpoint
        And see "200" as StatusCode
        Then I show the id and name
