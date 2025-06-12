*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${ENDPOINT}     api/users/2
&{HEADERS}      Content-Type=application/json    x-api-key=reqres-free-v1

*** Test Cases ***
DELETE Request Example
    Create Session    jsonplaceholder    ${BASE_URL}    verify=False
    ${response}=      DELETE On Session    jsonplaceholder    ${ENDPOINT}    headers=${HEADERS}
    Log    ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    204
