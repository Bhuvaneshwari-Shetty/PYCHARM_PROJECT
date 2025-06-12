*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Alerts
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Click Element   xpath://button[@onclick='jsAlert()']
        Sleep    2s
        #Information Alert
        Handle Alert    action=ACCEPT       timeout=3


        #Confirmation alert
        Click Element    xpath://button[@onclick='jsConfirm()']
        Sleep    2s
        Handle Alert    action=DISMISS       timeout=3


               #PROMPT Alert
        Click Element    xpath://button[@onclick='jsPrompt()']
        Sleep    2s
        Input Text Into Alert    Hello Bhuvaneshwari
        Sleep      4s
        #Handle Alert    action=ACCEPT       timeout=3
        Close Browser



