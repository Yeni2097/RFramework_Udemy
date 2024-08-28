*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot
Library    ../Level_3/ReadExcel.py

#Suite Setup     abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
#Suite Teardown    close browser
*** Variables ***
${URL}      https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${TITLE}    The Internet
${USER}     admin@yourstore.com
${PASS}     admin

*** Test Cases ***
Practica Nivel3 Subida Excel
    [Documentation]     practica Nivel3 Subida Excel
    [Tags]      TC1
    abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
    ${filas}    Numero de Filas    Hoja1
    FOR     ${i}    IN RANGE    2   ${filas}+1
        ${usuarios}=    dato por columna    Hoja1   ${i}    1
        ${password}=    dato por columna    Hoja1   ${i}    2
        Login With Execel    ${usuarios}    ${password}
    END
    sleep    2
    close browser

*** Keywords ***
Login with execel
    [Documentation]    Se realiza un login extrayendo la data desde excel
    [Arguments]    ${user}      ${pass}
    validar input    //input[@name="username"]    ${user}
    validar input    //input[@name="password"]    ${pass}
    Click Element    //i[@class="fa fa-2x fa-sign-in"]

Numero de Filas
    [Documentation]    Utiliza el metodo de numero de filas de python
    [Arguments]    ${hoja}
    ${respuesta}=   Numero_Filas    ${hoja}
    [Return]   ${respuesta}

Datos por columna

    [Documentation]    Utiliza el metodo para optener el valor de la columna en python
    [Arguments]     ${hoja}     ${fila}     ${col}
    ${respuesta}=   Dato_por_columna    ${hoja}     ${fila}     ${col}
    [Return]        ${respuesta}


