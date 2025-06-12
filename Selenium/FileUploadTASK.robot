*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library    OperatingSystem
*** Variables ***
${browser}      firefox
${url}          https://demoqa.com/upload-download
${path}         C:\\Users\\bhush\\Desktop\\EG Documents\\Offer_Letter.png
*** Test Cases ***
Upload-Download
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        #Download
        Click Element    //a[@id='downloadButton']
        Sleep    2s

        #Choose the file
        Choose File    //input[@id='uploadFile']    ${path}
        Sleep    2s

        ${files}=    List Files In Directory    C:\\Users\\bhush\\Downloads
        List Should Contain Value    ${files}    sampleFile.jpeg

       Sleep    2s
       Close Browser

