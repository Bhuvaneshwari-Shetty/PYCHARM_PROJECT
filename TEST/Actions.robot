*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in

*** Test Cases ***
Scrolling

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        #Right Click
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        Sleep    2s
        
        #Double click
        Double Click Element    xpath://a[normalize-space()='Sell']
        Sleep    2s

        Close Browser