*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443/
${ENDPOINT}     api/v2/videogame/1
&{HEADERS}      content-Type=application/json

*** Test Cases ***
DELETE Request Example
    Create Session    jsonplaceholder    ${BASE_URL}    verify=False
    ${response}=      DELETE On Session    jsonplaceholder    ${ENDPOINT}    headers=${HEADERS}
    Log    ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    200