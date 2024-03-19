*** Settings ***
Resource  ../support/hooks.robot
Resource  ../pages/login_page.robot

Suite Setup    [Hooks] - Before All

*** Test Cases ***

Realizar Login com sucesso
    [LoginPage] - Abri o navegador
    [LoginPage] - Prencher Login
    [LoginPage] - Realizar Login