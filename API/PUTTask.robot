*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://videogamedb.uk:443/
${ENDPOINT}     api/v2/videogame/1
&{HEADERS}      content-Type=application/json
&{BODY}         category=Platform    name=Mario    rating=Mature    releaseDate=2012-05-04    reviewScore=80

*** Test Cases ***
PUT Request Example
    Create Session    jsonplaceholder    ${BASE_URL}    verify=False
    ${response}=      PUT On Session    jsonplaceholder    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}
    Log               ${response.status_code}
    Log               ${response.text}
    Should Be Equal As Integers    ${response.status_code}    200