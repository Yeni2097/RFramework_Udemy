*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}
${BROWSER}

*** Test Cases ***
Demo
[Documentation]     prueba
[Tags]      prueba_1
open browser    ${}     ${}
maximize browser window
title should be    Tools
set selenium implicit wait    10
set selenium speed    .1s
*** Keywords ***
