*** Settings ***
Library     SeleniumLibrary
Library     Collections
*** Variables ***
${browser}      firefox
${url}          https://the-internet.herokuapp.com/upload
${path}         C:\\Users\\bhush\\Desktop\\EG Documents\\Offer_Letter.png
*** Test Cases ***
File Upload
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #Choose the file
        Choose File    xpath://input[@id='file-upload']    ${path}
        Sleep    2s
        #Upload
        Click Element    xpath://input[@id='file-submit']
        Sleep    2s

        Wait Until Element Is Visible    xpath://h3[normalize-space()='File Uploaded!']
        ${text}=        Get Text    //h3[normalize-space()='File Uploaded!']
        Log To Console    ${text}
        Close Browser
        
