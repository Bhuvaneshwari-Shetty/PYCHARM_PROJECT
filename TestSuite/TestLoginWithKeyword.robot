*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Verify Login Functionality
        [Tags]      Sanity
        Log     user enters the Username
        Log     user enters the Password
        Log     user clicks on the login button
        Log     user is navigated to home page

*** Test Cases ***
Verify Login Functionality With Keyword
        Login
*** Keywords ***
Login
        Log     user enters the Username
        Log     user enters the Password
        Log     user clicks on the login button
        Log     user is navigated to home page