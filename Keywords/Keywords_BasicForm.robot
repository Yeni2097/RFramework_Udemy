*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SUBMIT_BUTTON}    Xpath=//button[@type='submit']

#*** Test Cases ***
 #Practica 3 Formulario
    #[Documentation]     prueba
    #[Tags]      prueba_1
    #llenar Formulario
    #sleep    2
    #close browser

*** Keywords ***
abrir navegador
    [Arguments]    ${URL}     ${BROWSER}    ${TITLE}
    open browser    ${URL}     ${BROWSER}
    maximize browser window
    title should be    ${TITLE}
    set selenium implicit wait    10
    set selenium speed    .1s

llenar formulario
    #MANEJO DE INPUT TEXT#
    input text    id=firstName      yeni
    input text    id=lastName       alfaro
    input text    id=userEmail      yav@gmail.com
    input text    id=userNumber      1234567891
    input text    id=currentAddress      Prueba de dirección
    #MANEJO DE INPUT TEXT#

    #MANEJO DE RADIO BTN#
    click to element    (//label[contains(@class,'custom-control-label')])[2]   0.5
    #MANEJO DE RADIO BTN#

    #MANEJO DE FECHAS#
    click to element    //input[@id='dateOfBirthInput']   0.5
    click to element    //div[contains(@class,'react-datepicker__day react-datepicker__day--026 react-datepicker__day--selected react-datepicker__day--today')]     0.5
    #MANEJO DE FECHAS#

    scroll page     0   200

    #MANEJO DE AUTOCOMPLETE
    select autocomplete    //div[@class='subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3']    id=subjectsInput    Chemistry
    #MANEJO DE AUTOCOMPLETE

    #MANEJO DE CHECKBOX
    click to element    //label[@for='hobbies-checkbox-2'][contains(.,'Reading')]     0.5
    #MANEJO DE CHECKBOX

    #MANEJO DE UPLOAD
    upload file    css:input[type="file"]     D:\\Users\\yenifer.alfaro\\Downloads\\images.png
    #MANEJO DE UPLOAD

    scroll page     0   500

    #MANEJO DE DESPLEGABLES
    click to element    (//div[contains(@class,' css-1hwfws3')])[2]    1
    click to element    //div[text()='Uttar Pradesh']    3
    #MANEJO DE DESPLEGABLES

    #MANEJO DE BOTONES
    Click Button        ${SUBMIT_BUTTON}
    #MANEJO DE BOTONES
click to element
    [Arguments]    ${XPATH}      ${TIME}
    Wait Until Element Is Visible    xpath=${XPATH}    ${TIME}s
    Click Element    xpath=${XPATH}

upload file
    [Arguments]    ${SELECTOR}      ${FILE_PATH}
    Wait Until Element Is Visible    ${SELECTOR}     5
    choose file     ${SELECTOR}       ${FILE_PATH}

select autocomplete
    [Arguments]    ${SELECTOR_1}      ${SELECTOR_2}     ${OPTION}
    click to element    ${SELECTOR_1}    1
    Input Text    ${SELECTOR_2}     ${OPTION}
    Press Keys    ${SELECTOR_2}     ENTER
    #click element at coordinates   xpath=${SELECTOR_2}      0   50

click submit
    Click Button        ${SUBMIT_BUTTON}

login
    [Arguments]     ${USER}     ${PASS}     ${USER_V}     ${PASS_V}
    input text    ${USER}      ${USER_V}
    input text    ${PASS}      ${PASS_V}
    click submit

scroll page
    [Arguments]    ${x}     ${y}
    execute javascript    window.scrollTo(${x},${y})

validar input
    [Arguments]    ${selector}  ${value}
    wait until element is visible   xpath=${selector}
    wait until element is enabled   xpath=${selector}
    element should be visible   xpath=${selector}
    clear element text  xpath=${selector}
    execute javascript    window.scrollTo(0,20)
    input text   xpath=${selector}   ${value}
    #capture element screenshot    ${selector}     ${rutafotos}${dato}.png
