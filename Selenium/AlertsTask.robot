*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://demoqa.com/alerts

*** Test Cases ***
Alerts
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Click Element   xpath://button[@id='alertButton']
        Sleep    2s
        Handle Alert    action=ACCEPT       timeout=3

        #time alert
        Click Element    xpath://button[@id='timerAlertButton']
        Sleep    2s
        Handle Alert    action=ACCEPT       timeout=8
        Sleep    2S

        Click Element    xpath://button[@id='confirmButton']
        Handle Alert    action=ACCEPT       timeout=8
        Sleep    2s

        Click Element    xpath://button[@id='promtButton']
        Sleep    2s
        Input Text Into Alert    Hello Bhuvaneshwari
        Sleep      4s

        Close Browser



