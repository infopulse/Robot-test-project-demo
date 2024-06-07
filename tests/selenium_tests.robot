*** Settings ***
Documentation     A very first test suite to test login functionality of the Coffee Cart app.
...
Resource         selenium_resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Add Flat White to the cart Selenium
    Given Open Coffee Cart
    When Add coffee to the cart    Flat White
    Then Check price in the cart    18.00


