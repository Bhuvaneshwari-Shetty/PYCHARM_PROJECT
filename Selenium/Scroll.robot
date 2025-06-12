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

        Wait Until Element Is Visible    xpath://a[normalize-space()='About Amazon']
        Scroll Element Into View    xpath://a[normalize-space()='About Amazon']
        Sleep    2s
        Click Element    xpath://a[normalize-space()='About Amazon']
        Sleep    4s
        Element Should Be Visible    xpath://div[@class='Page-header-bar']//span[1]//a[1]

        Close Browser

