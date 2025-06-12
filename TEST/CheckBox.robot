*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Check Box

        [Documentation]     This is for check boxs
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To    https://rahulshettyacademy.com/AutomationPractice/
        Maximize Browser Window
        Page Should Contain Checkbox    xpath://input[@type='checkbox']
        Select Checkbox    checkBoxOption1
        Close Browser
