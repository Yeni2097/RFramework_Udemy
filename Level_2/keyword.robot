*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot

*** Variables ***
${URL}      https://demoqa.com/automation-practice-form
${BROWSER}    chrome

*** Test Cases ***
 Practica 3 Formulario
    [Documentation]     practica Nivel2 Keywords
    [Tags]      prueba_1
    abrir Navegador     ${URL}      ${BROWSER}
    llenar formulario
    sleep    2
    close browser







