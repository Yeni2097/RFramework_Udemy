*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot

*** Variables ***
${URL}      https://demoqa.com/automation-practice-form
${BROWSER}    chrome
${SUBMIT_BUTTON}    Xpath=//button[@type='submit']

*** Test Cases ***
 Practica 3 Formulario
    [Documentation]     practica Nivel2 Keywords
    [Tags]      prueba_1
    Abrir Navegador
    Rellenar Formulario     Jesus       Alfaro      JAV@gmail.com
    sleep    2
    close browser







