*** Settings ***
Suite Setup     Launch Browser
Suite Teardown  Close the Browser
Resource        ./../Resources/Resources.robot
*** Test Cases ***
TestCase1
        #Log     logintoapplication
        #Launch Browser
        Log To Console    Execute testcase1
        #Close the Browser

*** Test Cases ***
TestCase2
        Log To Console    Execute testcase2

*** Test Cases ***
TestCase3
        Log To Console    Execute testcase3





