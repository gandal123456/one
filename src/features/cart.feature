Feature: Shopping Cart

Background:
Given user navigate on "https://www.saucedemo.com/"
Given user enter username as "standard_user"
Given user enter password as "secret_sauce"
Given user click on login button

@Regression
Scenario: Add a Product to the cart
When user click on Add to cart as for Sauce Labs Backpack          
When user click on the cart icon                                  
Then product added in the cart                                   

@Regression
Scenario: Remove a Product from the cart
When user click on Add to cart as for Sauce Labs Backpack          
When user click on the cart icon
When user click on remove                                          
Then the product removed from the cart  




