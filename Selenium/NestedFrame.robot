*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://the-internet.herokuapp.com/nested_frames
${browser}    firefox

*** Test Cases ***
Extract Text From Nested Frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # LEFT FRAME
    Select Frame    name=frame-top
    Select Frame    name=frame-left
    ${left_text}=    Get Text    xpath=//body
    Log    Left frame text: ${left_text}
    Log To Console    ${left_text}
    Unselect Frame

    # MIDDLE FRAME
    Select Frame    name=frame-top
    Select Frame    name=frame-middle
    ${middle_text}=    Get Text    xpath=//div
    Log    Middle frame text: ${middle_text}
    Log To Console    ${middle_text}
    Unselect Frame

    # RIGHT FRAME
    Select Frame    name=frame-top
    Select Frame    name=frame-right
    ${right_text}=    Get Text    xpath=//body
    Log    Right frame text: ${right_text}
    Log To Console    ${right_text}
    Unselect Frame

    # BOTTOM FRAME
    Select Frame    name=frame-bottom
    ${bottom_text}=    Get Text    xpath=//body
    Log    Bottom frame text: ${bottom_text}
    Log To Console    ${bottom_text}

    Close Browser
