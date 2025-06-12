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
        
        #Mouse Hover
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    2s

        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s

        Element Should Be Visible    xpath://a[@id='nav-logo-sprites']
        Sleep    2s

        Close Browser
