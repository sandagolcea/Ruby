Feature: cucumber says OH HAI CUCUMBER
    In order to start learn Cucumber
    As a student at Makers academy
    I want to say OH HAI CUCUMBER

    Scenario: cucumber says OH HAI CUCUMBER
        Given a lulz greeter
        When I send it the greet message
        Then I should see "OH HAI CUCUMBER!"
