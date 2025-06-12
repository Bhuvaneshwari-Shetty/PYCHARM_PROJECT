*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    XML

*** Variables ***
${url}    https://the-internet.herokuapp.com/nested_frames
${browser}    firefox

*** Test Cases ***
Extract Text From Nested Frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Element Should Be Enabled    locator
    Element Should Be Visible    locator
    Element Text Should Be    source    expected
    Element Attribute Value Should Be    locator    attribute    expected

    Element Should Not Contain    locator    expected
    Element Should Be Focused    locator

    Close Browser
