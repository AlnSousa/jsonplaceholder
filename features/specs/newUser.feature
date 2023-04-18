Feature: Create new user 

    As an admin I want to create a new user

    @create
    Scenario: Create user
        When I create a new user
        Then see "201" as code response