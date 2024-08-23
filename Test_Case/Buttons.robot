*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://demoqa.com/radio-button
${BROWSER}    chrome
${NAME_FIELD}    id=userName
${EMAIL_FIELD}    id=userEmail
${CURRENT_ADDRESS_FIELD}    id=currentAddress
${PERMANENT_ADDRESS_FIELD}    id=permanentAddress
${SUBMIT_BUTTON}    id=submit


*** Keywords ***

*** Test Cases ***

Practica Primer Nivel RB

    [Documentation]    Radio_Button
    [Tags]    test_RB

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    DEMOQA
    Sleep    1

    #select radio button    yesRadio[nombre]     Yes[valor]
    #Wait Until Element Is Visible    Xpath=//label[contains(@for,'yesRadio')]   1s
    Click Element    Xpath=//label[contains(@for,'yesRadio')]
    Sleep    2

Practica Primer Nivel CB

    [Documentation]    CheckBox
    [Tags]    test_CB

    Open Browser    https://demoqa.com/checkbox    ${BROWSER}
    Maximize Browser Window
    Title Should Be    DEMOQA
    Sleep    1

    #select radio button    yesRadio[nombre]     Yes[valor]
    Wait Until Element Is Visible    Xpath=(//span[contains(@class,'rct-checkbox')])[1]   2s
    Click Element    Xpath=(//span[contains(@class,'rct-checkbox')])[1]
    Sleep    2

Practica Primer Nivel ComboBox

    [Documentation]    ComboBox
    [Tags]    test_ComboB

    Open Browser    https://demoqa.com/select-menu    ${BROWSER}
    Maximize Browser Window
    Title Should Be    DEMOQA
    Sleep    1

    Wait Until Element Is Visible    Xpath=(//div[contains(@class,' css-tlfecz-indicatorContainer')])[1]   2s
    Click Element    Xpath=(//div[contains(@class,' css-tlfecz-indicatorContainer')])[1]
    Sleep    0.5
    Wait Until Element Is Visible    xpath=//div[text()='Group 1, option 1']    10s
    Click Element    xpath=//div[text()='Group 1, option 1']

    Sleep    2
    Close Browser
