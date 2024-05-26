*** Settings ***
Documentation    Actions and Elements of Landing Page

Library    Browser

*** Variables ***
${field_search}     id=search-field
${button_search}    css=a[aria-label="Link do ícone de pesquisa"]

*** Keywords ***
Fill data search
    [Arguments]    ${data_search}
    Click    ${button_search}

    Wait For Elements State    ${field_search}    visible    5
    Fill Text                  ${field_search}    ${data_search}
    Click    ${button_search}
