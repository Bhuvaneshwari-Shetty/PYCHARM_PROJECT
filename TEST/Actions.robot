*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrolling
    [Documentation]    This test scrolls to and interacts with Amazon links
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${chrome options}
    Go To    https://www.amazon.in
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://a[normalize-space()='Mobiles']    10s
    Scroll Element Into View    xpath://a[normalize-space()='Mobiles']
    Open Context Menu    xpath://a[normalize-space()='Mobiles']
    Sleep    2s
    Double Click Element    xpath://a[normalize-space()='Sell']
    Sleep    2s
    Close Browser
