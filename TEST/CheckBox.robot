*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Check Box

        [Documentation]     This is for check boxs
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Page Should Contain Checkbox    xpath://input[@type='checkbox']
        Select Checkbox    checkBoxOption1
        Close Browser
