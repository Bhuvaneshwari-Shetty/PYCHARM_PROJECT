*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}       https://the-internet.herokuapp.com/tables
${BROWSER}   Firefox

*** Test Cases ***
Table
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

    Log To Console    Example one data table
    @{rows}=    Get WebElements    xpath=//table[@id='table1']/tbody/tr

    FOR    ${row}    IN    @{rows}
        ${text}=    Get Text    ${row}
        Log To Console    ${text}
    END
    ${last_name_1}=    Get Text    xpath=//table[@id='table1']/tbody/tr[4]/td[1]


    Log To Console     ${last_name_1}
    ${first_name_2}=    Get Text    xpath=//table[@id='table2']/tbody/tr[1]/td[2]
    Log To Console      ${first_name_2}
    Sleep    2s


    Close Browser
