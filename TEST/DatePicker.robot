*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}          https://www.tutorialspoint.com/selenium/practice/date-picker.php

*** Test Cases ***
Pick The date
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # Open calendar for the first date field
    Click Element    xpath://input[@id='datetimepicker1']

    # Wait until the day 15 is visible and click
    Sleep    5s
    Click Element    xpath://span[@class='flatpickr-day'][text()='15']
    Sleep    1s

    # Open calendar for the second date field
    Click Element    xpath://input[@id='datetimepicker2']
    # Wait until the day 20 is visible and click
    Sleep    5s
    Click Element    xpath://span[@class='flatpickr-day'][text()='20']

    Sleep    3s
    Close Browser
