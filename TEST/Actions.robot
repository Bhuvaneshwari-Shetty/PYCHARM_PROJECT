*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in

*** Test Cases ***
Scrolling

        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://www.amazon.in
        Maximize Browser Window
        
        
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        Sleep    2s
        
        #Double click
        Double Click Element    xpath://a[normalize-space()='Sell']
        Sleep    2s

        Close Browser
