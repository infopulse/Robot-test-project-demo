*** Settings ***
Library   Browser


*** Variables ***
${SERVER}        https://coffee-cart.app/
${BROWSER}        Chrome


*** Test Cases ***
Add Flat White to the cart Playwright
    Open Coffee Cart
    Add coffee to the cart    Flat White
    Check price in the cart    18.00


*** Keywords ***
Open Coffee Cart
    New Page    ${SERVER}
    Menu page must be displayed

Menu page must be displayed
    Get Title    equal   Coffee cart
    Get Url    equal    ${SERVER}
    Get element states  div[data-test=Espresso].cup-body    contains    visible

Add coffee to the cart
    [Arguments]    ${coffee}
    Click    div[aria-label='${coffee}'].cup-body

Check price in the cart
    [Arguments]   ${price}
    Get Text    [data-test=checkout]    contains    ${price}
