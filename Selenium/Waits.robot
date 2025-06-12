*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}    https://the-internet.herokuapp.com/nested_frames
${browser}    firefox

*** Test Cases ***
Extract Text From Nested Frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Wait Until Element Is Visible    locator
    Wait Until Page Does Not Contain Element    locator
    Wait Until Keyword Succeeds    retry    retry_interval    name
    Wait Until Element Contains    locator    text
    Wait Until Element Is Enabled    locator
    Wait Until Page Contains Element    locator
    Wait Until Element Does Not Contain    locator    text
    Wait Until Element Is Not Visible    locator

    Close Browser