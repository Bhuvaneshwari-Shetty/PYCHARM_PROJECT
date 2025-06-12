*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Multiple Radio Button Selection
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements} =        Get WebElements    xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep       2s
        END
        Close Browser