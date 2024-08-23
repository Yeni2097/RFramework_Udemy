*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Abrir Navegador
    open browser    https://demoqa.com/text-box     chrome
    maximize browser window
    sleep    1
    input text  id=userName    Yeni
    input text  id=userEmail    Yeni@gmail.com
    input text  id=currentAddress    direccion uno
    input text  id=permanentAddress    direccion dos
    sleep    1
    execute javascript    window.scrollTo(0,200)
    sleep    2
    click button    id=submit
    close browser

*** Keywords ***
