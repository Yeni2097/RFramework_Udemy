*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Resource    ../Keywords/Keywords_BasicForm.robot

*** Variables ***
${URL}=      https://demoqa.com/automation-practice-form
${BROWSER}=    chrome
${TITLE}=    DEMOQA
*** Test Cases ***
Practica condicional
    [Documentation]     practica condicional
    [Tags]      TC1

    ${nom}=    Get Value From User      Dame tu nombre

    IF  '${nom}' == 'maria'
        Log To Console    Hola Maria
        Abrir Navegador
        Sleep    2
        Close Browser
    ELSE IF  '${nom}' == 'juan'
        Log To Console    Hola Juan
    ELSE
        Log To Console    No te conozco
    END
#Run Keyword IF '${variable_comparar}' == 'valor'     Keyword_A   ELSE    Keyword_B
#Run Keyword IF '${variable_comparar}' == 'valor'     Keyword_A   ELSE IF   '${variable_comparar}' == 'valor'     Keyword_B      ELSE    keyword_C




*** Keywords ***
