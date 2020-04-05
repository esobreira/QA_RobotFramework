***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Login com sucesso.
    Go To           ${url}/login
    Login with      stark   jarvis!
    Sleep           5
    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Login com erro.
    [tags]          login_error
    Go To           ${url}/login
    Login with      stark   abc123
    ${message}=     Get WebElement                  id:flash
    Should Contain  ${message.text}                 Senha é invalida!

Usuário não existe.
    [tags]          user_not_exist
    Go To           ${url}/login
    Login with      papito          123456
    ${message}=     Get WebElement                  id:flash
    Log To Console  ${message.text}
    Should Contain  ${message.text}                 O usuário informado não está cadastrado!

***Keywords***
Login with
    [Arguments]     ${uname}    ${pass}
    Input Text      css:input[name=username]        ${uname}
    Input Text      css:input[name=password]        ${pass}
    Click Element   class:btn-login
