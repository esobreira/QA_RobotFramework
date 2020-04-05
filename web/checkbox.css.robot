*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com/

*** Test Cases ***
Marcando com a opção css
    [tags]          ironman
    Open Browser                    ${url}     chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
    Sleep                           5
    Close Browser