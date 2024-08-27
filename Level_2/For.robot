*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot

#Suite Setup     abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
#Suite Teardown    close browser
*** Variables ***
${URL}      https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F
${BROWSER}    chrome
@{LETTER_LIST}  A   B   C    F    G
#${TITLE}    Your store. Login
#${USER}     admin@yourstore.com
#${PASS}     admin

*** Test Cases ***
Practica Nivel2 For_Range
    [Documentation]     practica Nivel2 For in Range
    [Tags]      TC1
    FOR     ${i}    IN RANGE    1   10
        log to console     ${i}
    END

Practica Nivel2 For_Array
    [Documentation]     practica Nivel2 For array
    [Tags]      TC2
    FOR     ${i}    IN     @{LETTER_LIST}
        log to console     ${i}
    END

Practica Nivel2 For_Continue
    [Documentation]     practica Nivel2 For continue
    [Tags]      TC3
    FOR     ${i}    IN     @{LETTER_LIST}
    Continue For Loop If    $i=='C'
        log to console     ${i}
    END

Practica Nivel2 For_Exit
    [Documentation]     practica Nivel2 For Exit
    [Tags]      TC4
    FOR     ${i}    IN     @{LETTER_LIST}
    Exit For Loop if    $i=='C'
        log to console     ${i}
    END