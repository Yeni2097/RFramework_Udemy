*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords_BasicForm.robot

#Suite Setup     abrir navegador     ${URL}      ${BROWSER}      ${TITLE}
#Suite Teardown    close browser
*** Variables ***
${URL}      https://testpages.herokuapp.com/styled/basic-html-form-test.html
${BROWSER}    chrome
${TITLE}     HTML Form Elements


*** Test Cases ***
Practica Nivel2 Envio Masivo datos
    [Documentation]     practica Nivel2    Envio Masivo datos
    [Tags]      TC1
    ENVIO MASIVO PRUEBA


*** Keywords ***
Bloque uno
    validar input       //input[contains(@name,'username')]     Yeni
    validar input       //input[contains(@type,'password')]     12345678
    validar input       //textarea[@cols='40'][contains(.,'Comments...')]   Comentario de prueba

Bloque dos
    upload file    //input[contains(@name,'filename')]      D:\\Users\\yenifer.alfaro\\Downloads\\images.png
    click to element    (//input[contains(@name,'checkboxes[]')])[2]    1
    click to element    //input[contains(@value,'rd1')]     1
    click to element    //option[@value='ms2'][contains(.,'Selection Item 2')]      1
    select from list by index    //select[contains(@name,'dropdown')]   3
    submit form

Envio masivo prueba
    FOR     ${i}    IN RANGE    0       10
        open browser   ${URL}      ${BROWSER}      ${TITLE}
        Bloque Uno
        Bloque Dos
        sleep    2
        close browser
    END