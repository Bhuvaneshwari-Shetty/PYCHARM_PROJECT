*** Settings ***
Resource        ./../Resources/Resources.robot

*** Test Cases ***
Verify login functionality
        [Tags]      Sanity
        logintoapplication

