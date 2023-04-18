Feature: Delete user 

    As an admin I want to delete a user

    @delete
    Scenario: Delete user
        When I delete a user
        Then see successful response to delete with code "200" 
