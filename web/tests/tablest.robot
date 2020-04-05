***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Testando se existe valor da linha 1 da tablerow
    Go To                               ${url}/tables
    Table Row Should Contain            id:actors       1       $ 10.000.00

Testando se existe Instagram na linha 1 da tablerow
    Go To                               ${url}/tables
    Table Row Should Contain            id:actors       1       @robertdowneyjr

Descobre a linha pelo texto chave e valida os demais valores
    Go To                   ${url}/tables
    ${target}=              Get WebElement          xpath:.//tr[contains(., '@chadwickboseman')]
    Log                     ${target.text}
    Log To Console          ${target.text}
    Should Contain          ${target.text}          $ 700.000
    Should Contain          ${target.text}          Pantera Negra