*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://demoqa.com/text-box
${BROWSER}    chrome
${NAME_FIELD}    id=userName
${EMAIL_FIELD}    id=userEmail
${CURRENT_ADDRESS_FIELD}    id=currentAddress
${PERMANENT_ADDRESS_FIELD}    id=permanentAddress
${SUBMIT_BUTTON}    id=submit


*** Keywords ***

*** Test Cases ***

Practica Primer Nivel

    [Documentation]    Validaciones
    [Tags]    test_uno

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ToolsQA
    Sleep    1

    # Valida que el elemento sea visible
    Element Should Be Visible    ${NAME_FIELD}
    # Valida que el elemento esté disponible
    Element Should Be Enabled    ${NAME_FIELD}
    Input Text    ${NAME_FIELD}    Yeni
    Input Text    ${EMAIL_FIELD}    Yeni@gmail.com

    Element Attribute Value Should Be    ${CURRENT_ADDRESS_FIELD}    placeholder    Current Address
    Input Text    ${CURRENT_ADDRESS_FIELD}    direccion uno
    Input Text    ${PERMANENT_ADDRESS_FIELD}    direccion dos

    Sleep    0.5
    Execute Javascript    window.scrollTo(0,200)
    Sleep    2
    Click Button    ${SUBMIT_BUTTON}
    Close Browser

