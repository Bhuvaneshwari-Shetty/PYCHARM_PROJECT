*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
Drop Down Task
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        @{labels}=       Get Selected List Labels    id:dropdown
        Log To Console    @{labels}
        Select From List By Value    id:dropdown     1
        Sleep    2s
        Select From List By Index    id:dropdown      2
        Sleep    2s
        Select From List By Label    id:dropdown  Option 1
        Sleep    2s
        Close Browser