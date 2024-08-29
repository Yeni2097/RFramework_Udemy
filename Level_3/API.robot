*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Resource    ../Keywords/Keywords_BasicForm.robot


*** Variables ***
${URL}=      https://demoqa.com/automation-practice-form
${BROWSER}=    chrome
${TITLE}=    DEMOQA
${URL_API}=     https://reqres.in/

*** Test Cases ***
Practica API GET
    [Documentation]     Practica API GET
    [Tags]      TC1
    create session    session_api    ${URL_API}
    ${response}=    get request    session_api      api/users?page=2
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        200

    ${body}=    convert to string       ${response.content}
    should contain    ${body}       lindsay.ferguson@reqres.in

Practica API POST
    [Documentation]     Practica API POST
    [Tags]      TC2
    create session    session_api    ${URL_API}
    ${body}=    create dictionary   name=morpheus      job=leader
    ${headers}=     create dictionary    Content-Type=application/json; charset=utf-8
    ${response}=    POST On Session      session_api      api/users      json=${body}    headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response.json()}
    Log To Console    ${response.headers}

    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        201

    ${res-body}=    convert to string       ${response.content}
    should contain    ${res-body}       morpheus

Practica API GET CONSULT
    [Documentation]     Practica API GET CONSULT
    [Tags]      TC3
    create session    session_api    ${URL_API}
    ${response}=    get request    session_api      api/users/2
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        200

    ${body}=    convert to string       ${response.content}
    should contain    ${body}       Janet

Practica API PUT
    [Documentation]     Practica API PUT
    [Tags]      TC4
    create session    session_api    ${URL_API}
    ${body}=    create dictionary   name=yeni      job=sistemas
    ${headers}=     create dictionary    Content-Type=application/json; charset=utf-8
    ${response}=    put request      session_api      api/users/2     json=${body}    headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response.json()}
    Log To Console    ${response.headers}

    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        200

    ${res-body}=    convert to string       ${response.content}
    should contain    ${res-body}       yeni

Practica API DELETE
    [Documentation]     Practica API DELETE
    [Tags]      TC5
    create session    session_api    ${URL_API}
    ${response}=    DELETE REQUEST   session_api      api/users/2

    Log To Console    ${response.status_code}

    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        204

*** Keywords ***
