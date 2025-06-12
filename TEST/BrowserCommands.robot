*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Browser Commands

        [Documentation]
        Open Browser        ${url}      ${browser}
        Go To    https://google.com
        Sleep    4s
        Go Back
        Sleep    4s
        Reload Page
        Sleep    4s
        Close Browser