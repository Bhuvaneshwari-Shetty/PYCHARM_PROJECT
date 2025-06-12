*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Variables ***

${browser}      Firefox
${url}      https://omayo.blogspot.com/
${path}         C:\\Users\\bhush\\Desktop\\EG Documents\\Offer_Letter.png
*** Test Cases ***
File Upload
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #Choose the file
        Choose File    xpath://input[@id='uploadfile']    ${path}


        Page Should Contain Radio Button    xpath://input[@type='radio']
        Select Radio Button    gender    male

       ${elements} =        Get WebElements    xpath://select[@id='multiselect1']
        FOR    ${element}    IN    @{elements}
            Select From List By Value    xpath://select[@id='multiselect1']      volvox
            Sleep    2s
            UnSelect From List By Value    xpath://select[@id='multiselect1']    volvox
            Sleep    2s

            Select From List By Index    xpath://select[@id='multiselect1']  2
            Sleep    2s
            UnSelect From List By Index    xpath://select[@id='multiselect1']  2
            Sleep    2s

            Select From List By Label    xpath://select[@id='multiselect1']  Audi
            Sleep       2s
            UnSelect From List By Label    xpath://select[@id='multiselect1']  Audi

        END

        @{labels}=       Get Selected List Labels    xpath://select[@id='drop1']
        Log To Console    @{labels}
        Select From List By Value    xpath://select[@id='drop1']     abc
        Sleep    2s

        Select From List By Index    xpath://select[@id='drop1']      2
        Sleep    2s

        Select From List By Label    xpath://select[@id='drop1']      Older Newsletters
        Sleep    2s

        Select From List By Label    xpath://select[@id='drop1']      doc 1
        Sleep    2s

        Select From List By Label    xpath://select[@id='drop1']      doc 2
        Sleep    2s

        Select From List By Label    xpath://select[@id='drop1']      doc 3
        Sleep    2s

        Select From List By Label    xpath://select[@id='drop1']      doc 4
        Sleep    2s

        Wait Until Element Is Visible    xpath://input[@id='prompt']
        Click Element    xpath://input[@id='prompt']
        Sleep    2s
        Input Text Into Alert    Hello Bhuvaneshwari
        Sleep      2s

        Wait Until Element Is Visible    xpath://input[@id='confirm']
        Click Element    xpath://input[@id='confirm']
        Sleep    2s
        #Handle Alert    action=ACCEPT       timeout=3
        Sleep    2S

        Wait Until Element Is Visible    xpath://input[@id='prompt']
        Click Element    xpath://input[@id='prompt']
        Sleep    2s
        Input Text Into Alert    Hello Bhuvaneshwari
        Sleep      2s

        Wait Until Element Is Visible    xpath://input[@id='confirm']
        Click Element    xpath://input[@id='confirm']
        Sleep    2s
        #Handle Alert    action=ACCEPT       timeout=3
        Sleep    2S
        Wait Until Element Is Visible    xpath://input[@id='alert2']
        Sleep    2s
        Scroll Element Into View         xpath://input[@id='alert2']
        Click Element   xpath://input[@id='alert2']
        Sleep    2s
        #Handle Alert    action=ACCEPT       timeout=3


        Click Element    xpath://button[normalize-space()='Try it']
        Sleep    3s
        #Handle Alert    action=DISMISS       timeout=3
        Sleep    2S


        Capture Page Screenshot  C://Users//bhush//Downloads//Imange1.png
        Sleep    2s
        Capture Element Screenshot    xpath://button[normalize-space()='Check this']     C://Users//bhush/Downloads//Image2.png


        Close Browser

