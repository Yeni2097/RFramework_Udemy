*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Resource    ../Keywords/Keywords_BasicForm.robot

Suite Setup     Connect To Database     pymysql      ${DB_NAME}       ${DB_USER}       ${DB_PASS}        ${DB_HOST}      ${DB_PORT}
Suite Teardown    Disconnect From Database

*** Variables ***
${URL}=      https://the-internet.herokuapp.com/login
${BROWSER}=    chrome
${TITLE}=    The Internet
${DB_NAME}=     prueba_rf
${DB_USER}=     root
${DB_PASS}=     Claro+2024
${DB_HOST}=     127.0.0.1
${DB_PORT}=     3306
*** Test Cases ***
Practica Nivel3 Manejo BD
    [Documentation]     practica Nivel3 Manejo BD
    [Tags]      TC1
    abrir navegador     ${URL}      ${BROWSER}      ${TITLE}

Base crear tabla
    [Documentation]    crear una tabla nueva
    [Tags]  TC2
    ${crear}=       Execute Sql String    CREATE TABLE `workperson` (`id` int(11) NOT NULL, `name` varchar(40) NOT NULL, `position` varchar(40) NOT NULL);
    should be equal as strings    ${crear}      ${none}
Base Insertar registro
    [Documentation]    insertar una tabla
    [Tags]  TC3
    ${insertar}=       Execute Sql String    INSERT INTO workperson (id, name, position) VALUES (
     'Maria', 'analista');
    #${insertar_sql_script}      Execute Sql Script    PAth del script, debe ser .sql
    should be equal as strings    ${insertar}     ${none}

Base consulta por Nombre
    [Documentation]    consultar en una tabla
    [Tags]  TC4
    check if exists in database    select name from workperson where name="Maria"
Base consulta por Nombre Negativo
    [Documentation]    consultar en una tabla un dato que no existe
    [Tags]  TC5
    check if not exists in database    select name from workperson where name="Maria"
Valida tabla
    [Documentation]    Valitar si la tabla existe
    [Tags]  TC6
    table must exist    workperson
Valida cuantos elementos existen
    [Documentation]    Validar cuantos elementos existen
    [Tags]  TC7
    row count is equal to x    select * from workperson where name="maria"  1

actualizar elementos
    [Documentation]    actualizar elementos
    [Tags]  TC8
    ${actualizar}=      Execute Sql String    Update workperson set name="Lucia" where name="Maria"
    should be equal as strings    ${actualizar}     None

Borrar elementos
    [Documentation]    Borrar elementos
    [Tags]  TC9
    ${borrar}=      Execute Sql String    TRUNCATE TABLE workperson;
    should be equal as strings    ${borrar}     None

Consulta global
    [Documentation]    Consulta global
    [Tags]  TC10
    @{consulta}=      query    select * from workperson;
    log to console    many @${consulta}


*** Keywords ***
