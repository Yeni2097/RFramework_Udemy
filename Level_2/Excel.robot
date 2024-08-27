*** Settings ***
Documentation    Prueba Excel
Library    SeleniumLibrary
Library    DataDriver   D:\\Users\\yenifer.alfaro\\RF_Nivel1\\RFramework_Udemy\\Documentos\\Datos Inicio Sesion.xlsx    sheet_name=Hoja1
Resource    ../Keywords/Keywords_BasicForm.robot

Test Setup     abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
Test Teardown    close browser
Test Template    conectar excel

*** Variables ***
${URL}      https://demoqa.com/text-box
${BROWSER}    chrome
${TITLE}    DEMOQA
${EXCEL}    D:\\Users\\yenifer.alfaro\\RF_Nivel1\\RFramework_Udemy\\Documentos\\Datos Inicio Sesion.xlsx


*** Test Cases ***
Practica Nivel2 Login   using   ${name}     ${email}
#    [Documentation]     practica Nivel2 Carga desde Excel
#    [Tags]      TC1
#    sleep    2

*** Keywords ***

conectar excel
    [Arguments]    ${name}      ${email}
    log to console    NOMBRE:${name}
    validar input    //input[@id='userName']    ${name}
    validar input    //input[@id='userEmail']   ${email}