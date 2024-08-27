*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot


*** Variables ***
${URL}      https://demoqa.com/buttons
${BROWSER}    chrome
${TITLE}    DEMOQA

*** Test Cases ***
Practica Nivel2 Click
    [Documentation]     practica Nivel2 Click
    [Tags]      TC1
    abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
    double click element    id=doubleClickBtn
    sleep   2
    open context menu    id=rightClickBtn
    sleep    2
    close browser

Practica Nivel2 Drag
    [Documentation]     practica Nivel2 Click
    [Tags]      TC2
    abrir navegador     https://demoqa.com/dragabble     ${BROWSER}      ${TITLE}
    drag and drop    id=dragBox     id=Ad.Plus-970x250-2
    sleep    2
    drag and drop by offset    id=dragBox    200    50
    sleep    2
    close browser

Practica Nivel2 Scroll
#hacer scroll en un lugar especifico
    [Documentation]     practica Nivel2 Scroll
    [Tags]      TC3
    abrir navegador     https://www.google.com/    ${BROWSER}      Google
    validar input    //textarea[contains(@name,'q')]      Lan Zhan
    press key    xpath=//textarea[contains(@name,'q')]    \uE007
    scroll element into view    xpath=(//span[contains(.,'6 imágenes más')])[2]
    sleep    5
    close browser
