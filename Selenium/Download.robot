*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library    OperatingSystem
*** Variables ***
${browser}      firefox
${url}          https://the-internet.herokuapp.com/download
${path}         C:\\Users\\bhush\\Downloads\
*** Test Cases ***
Alerts
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        #Download
        Click Element    //a[normalize-space()='Test.txt']
        Sleep    2s

        #Choose the file
       ${files}=    List Files In Directory    ${path}
       List Should Contain Value    ${files}    Test.txt
       Sleep    2s


        Close Browser

