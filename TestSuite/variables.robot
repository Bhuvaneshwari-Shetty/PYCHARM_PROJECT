*** Settings ***
Library     SeleniumLibrary
Variables       ./../Variables.py

*** Variables ***
${name}      John
${city}      Puttur
@{list1}    green   red blue
&{dict}      username=admin  password=admin@123
*** Test Cases ***
Define variables
        Log         ${name}
        Log         ${city}
        Log         ${list1}
        Log         ${list1[0]}
        FOR    ${element}    IN    @{LIST1}
            Log    ${element}
        END
        Log    ${dict}[username]
        Log    ${dict}[password]
Set variables at TestCase level
        Set Test Variable    ${address}     ringroad
        Log    ${address}

Set variables at global level
        Log    ${username}
        Log    ${password}

Set variables at Suite level
        Log    ${username}
        Log    ${password}