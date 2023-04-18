Feature: Update a user 

    As an admin I want to Update a user

    @update
    Scenario: Update user
        When I make a request to update user info
        Then see successful response with code "200"
        