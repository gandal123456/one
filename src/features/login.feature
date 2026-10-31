Feature: Login functionality

Background:
Given user navigate on "https://www.saucedemo.com/"

@Smoke
Scenario: Login with valid credentials
When user enter username as "standard_user"
When user enter password as "secret_sauce"
When user click on login button
Then user should navigate to next Page
