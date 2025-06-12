*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}          https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to sucessfuly login with valid credentials
        Open Browser    ${url}  ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='firstname']     timeout=5
        Input Text    xpath://input[@id='firstname']    Bhuvaneshwari
        Input Text    xpath://input[@id='lastname']    Shetty
        Input Text    xpath://input[@id='username']    Bhuvi
        Input Text    xpath://input[@id='password']   Shetty123
        Click Element    xpath://input[@value='Register']
        #Wait Until Element Is Visible    xpath://h1[normalize-space()='Selenium - Automation Practice Form']      timeout=5
        #Element Should Be Visible    xpath:///h1[normalize-space()='Selenium - Automation Practice Form']      timeout=5
        Close Browser
