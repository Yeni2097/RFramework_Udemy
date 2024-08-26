*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://demoqa.com/automation-practice-form
${BROWSER}    chrome
${SUBMIT_BUTTON}    Xpath=//button[@type='submit']

*** Test Cases ***
 Practica 3 Formulario
    [Documentation]     prueba
    [Tags]      prueba_1
    open browser    ${URL}     ${BROWSER}
    maximize browser window
    title should be    DEMOQA
    set selenium implicit wait    10
    set selenium speed    .1s
    Rellenar Formulario
    sleep    2
    close browser

*** Keywords ***
Rellenar formulario
    #MANEJO DE INPUT TEXT#
    input text    id=firstName      yeni
    input text    id=lastName       alfaro
    input text    id=userEmail      yav@gmail.com
    input text    id=userNumber      1234567891
    input text    id=currentAddress      Prueba de dirección
    #MANEJO DE INPUT TEXT#

    #MANEJO DE RADIO BTN#
    Wait Until Element Is Visible    Xpath=(//label[contains(@class,'custom-control-label')])[2]   0.5s
    Click Element    Xpath=(//label[contains(@class,'custom-control-label')])[2]
    #MANEJO DE RADIO BTN#

    #MANEJO DE FECHAS#
    Wait Until Element Is Visible    Xpath=//input[@id='dateOfBirthInput']   0.5s
    Click Element    Xpath=//input[@id='dateOfBirthInput']
    Wait Until Element Is Visible   Xpath=//div[contains(@class,'react-datepicker__day react-datepicker__day--026 react-datepicker__day--selected react-datepicker__day--today')]     0.5s
    #MANEJO DE FECHAS#

    execute javascript    window.scrollTo(0,200)

    #MANEJO DE AUTOCOMPLETE
    Wait Until Element Is Visible   xpath=//div[@class='subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3']   0.5s
    Click Element   xpath=//div[@class='subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3']
    Input Text    id=subjectsInput    Chemistry
    Press Keys    id=subjectsInput    ENTER
    #MANEJO DE AUTOCOMPLETE

    #MANEJO DE CHECKBOX
    Wait Until Element Is Visible   Xpath=//label[@for='hobbies-checkbox-2'][contains(.,'Reading')]     0.5s
    Click Element    Xpath=//label[@for='hobbies-checkbox-2'][contains(.,'Reading')]
    #MANEJO DE CHECKBOX

    #MANEJO DE UPLOAD
    Wait Until Element Is Visible    css:input[type="file"]     5
    ${image_path}        set variable        D:\\Users\\yenifer.alfaro\\Downloads\\images.png
    choose file     css:input[type="file"]      ${image_path}
    #MANEJO DE UPLOAD

    execute javascript    window.scrollTo(0,500)

    #MANEJO DE DESPLEGABLES
    Wait Until Element Is Visible    xpath=(//div[contains(@class,' css-1hwfws3')])[2]    1s
    Click Element    xpath=(//div[contains(@class,' css-1hwfws3')])[2]
    Wait Until Element Is Visible    xpath=//div[text()='Uttar Pradesh']    10s
    Click Element    xpath=//div[text()='Uttar Pradesh']
    #MANEJO DE DESPLEGABLES

    #MANEJO DE BOTONES
    Click Button        ${SUBMIT_BUTTON}
    #MANEJO DE BOTONES





