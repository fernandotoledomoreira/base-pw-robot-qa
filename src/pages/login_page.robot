*** Settings ***
Library  Browser

*** Variables ***
${BROWSER}      chromium
${HEADLESS}     ${false}
${SITE}         https://seubarriga.wcaquino.me/login

# **
# * Mapeamento de elementos
# **

*** Variables ***
${field_email}             //input[@id='email']
${field_password}          //input[@id='senha']
${button_entrar}           //button[contains(text(),'Entrar')]
${element_login_sucess}    //div[contains(text(),'Bem vindo, testudemy!')]

# **
# * Métodos e Keywords
# **

*** Keywords ***
[LoginPage] - Abri o navegador
    New Browser    browser=${BROWSER}
    ...            headless=${HEADLESS}
    New Page       url=${SITE}
    Get Title  ==  Seu Barriga - Log in

[LoginPage] - Prencher Login
    Fill Text    xpath=${field_email}      test@test
    Fill Text    xpath=${field_password}   123

[LoginPage] - Realizar Login
    Click       xpath=${button_entrar}
    Get Text    xpath=${element_login_sucess}  ==  Bem vindo, testudemy!