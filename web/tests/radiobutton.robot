***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Selecionando por id
    Go To                               ${url}/radios
    Select Radio Button                 movies      cap
    Radio Button Should Be Set To       movies      cap

Selecionando por value    
    Go To                               ${url}/radios
    Select Radio Button                 movies      the-avengers
    Radio Button Should Be Set To       movies      the-avengers
