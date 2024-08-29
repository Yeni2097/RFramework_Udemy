*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Resource    ../Keywords/Keywords_BasicForm.robot

Suite Setup     abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
Suite Teardown   close browser

*** Variables ***
${URL}=      https://demoqa.com/automation-practice-form
${BROWSER}=    chrome
${TITLE}=    DEMOQA
*** Test Cases ***
Practica paralelo
    [Documentation]     practica Nivel3 Manejo BD
    [Tags]      TC1
    validar input    //input[@id='firstName']       yeni

#robot -d Reportes_pruebas   Paralelo*.robot (funciona para correr varios .robot)




*** Keywords ***
