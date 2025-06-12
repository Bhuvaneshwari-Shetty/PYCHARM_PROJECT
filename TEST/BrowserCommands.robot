*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Browser Commands

        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To    https://rahulshettyacademy.com/AutomationPractice/
        Go To    https://google.com
        Sleep    4s
        Go Back
        Sleep    4s
        Reload Page
        Sleep    4s
        Close Browser
