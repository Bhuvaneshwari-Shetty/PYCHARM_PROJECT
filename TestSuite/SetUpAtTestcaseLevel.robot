*** Test Cases ***
Login
        SetUp
        Log To Console    Execute testcase1
        Log To Console    Logging to the application
        TearDown

AddToCart
        SetUp
        Log To Console    Execute testcase2
        Log To Console    Adding Product to the cart
        TearDown

*** Keywords ***
SetUp
    Log To Console    Launching the browser

TearDown
    Log To Console   Closing the browser