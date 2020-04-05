*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com/
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando com a opção xpath
    [tags]          ironman
    Open Browser                    ${url}     chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           5
    Close Browser