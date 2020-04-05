*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com/

*** Test Cases ***
Marcando opção com id
    Open Browser                    ${url}     chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor
    Sleep                           5
    Close Browser