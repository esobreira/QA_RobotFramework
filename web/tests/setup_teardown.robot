*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com id
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor

Marcando com a opção css
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']

Marcando com a opção xpath
    [tags]          ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}

