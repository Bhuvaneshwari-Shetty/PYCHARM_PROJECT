*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Radio Button
        [Documentation]     This is for radio button
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Page Should Contain Radio Button    xpath://input[@class='radioButton']
        Select Radio Button    radioButton    radio2
        Close Browser
        
