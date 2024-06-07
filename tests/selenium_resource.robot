*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           keywords.selenium_custom_keywords.MySeleniumKeywords


*** Variables ***
${SERVER}        https://coffee-cart.app/
${BROWSER}        Chrome
${DELAY}          0


*** Keywords ***
Open Coffee Cart
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}.
    Menu page must be displayed

Menu page must be displayed
    Title Should Be    Coffee cart
    Location Should Be    ${SERVER}
    Element Should Be Visible    css:[data-test=Espresso].cup-body

Add coffee to the cart
    [Arguments]    ${coffee}
    Click Element    css:[aria-label="${coffee}"].cup-body

Check price in the cart
    [Arguments]   ${price}
    Element Contains Text    css:[data-test=checkout]    ${price}
#    Element text should be    css:[data-test=checkout]    ${price}