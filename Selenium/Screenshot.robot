*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem


*** Variables ***

${browser}      Firefox

${url}      https://the-internet.herokuapp.com/javascript_alerts


*** Test Cases ***
Screenshot

        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot  C://Users//bhush//Downloads//robo.png
        Sleep    2s
        Capture Element Screenshot    xpath://button[@onclick='jsAlert()']      C://Users//bhush/Downloads//Screenshot.png
        Close Browser

