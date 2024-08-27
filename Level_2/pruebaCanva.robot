*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot

Suite Setup     abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
Suite Teardown    close browser
*** Variables ***
${URL}      https://www.canva.com/design/DAGPFMYkrFY/URiS1vYNajcHNB_M1AoCWQ/edit
${BROWSER}    chrome
${TITLE}    Your store. Login
${USER}     admin@yourstore.com
${PASS}     admin

*** Test Cases ***
Practica Nivel2 Login
    [Documentation]     practica Nivel2
    [Tags]      TC1
    #login      id=Email   id=Password    ${USER}     ${PASS}
    sleep    2

*** Keywords ***
