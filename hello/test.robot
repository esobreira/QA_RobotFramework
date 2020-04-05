*** Settings ***
Library     app.py

*** Test Case ***
Deve retornar mensagem de welcome
    ${result}=          welcome     Eberton
    Log To Console      ${result}
    Should Be Equal     ${result}   Olá Eberton, Bem vindo ao curso básico de Robot Framework