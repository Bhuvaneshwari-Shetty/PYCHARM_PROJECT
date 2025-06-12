*** Settings ***
Library    DataDriver       C:\\Users\\bhush\\PyCharmMiscProject\\TestData\\ddtLogindataCSV.csv    sheet_name=ddtLogindataCSV
Library    SeleniumLibrary
Resource    ../Resources/DDTKeyword.robot


Suite Setup     Launch App
Suite Teardown  Close App
Test Template   InvalidLogin

*** Test Cases ***
Login with user ${username} and ${password}     Default UserData

*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        Sleep    2s
        Set Email   ${username}
        Sleep    2s
        Set Password    ${password}
        Sleep    2s
        Click Login
        Sleep    2s
        Error Message Should be Visible


