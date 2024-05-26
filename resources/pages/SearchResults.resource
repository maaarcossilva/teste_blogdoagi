*** Settings ***
Documentation    Actions and Elements of Search Results Page

Library    Browser

*** Variables ***
${text_results_element}    xpath=//h1[contains(., "Resultados encontrados para:")]

*** Keywords ***
I should see the search return according to the filter
    [Arguments]    ${data_search}

    Wait For Elements State    ${text_results_element}    visible    5

    Get Text    css=a >> text=${data_search}
    ...    equal
    ...    ${data_search}

Check if it contains articles returned with keywords
    [Arguments]    ${data}

    Wait For Elements State    ${text_results_element}    visible    5

    ${word}    Get Text    id=main
    Should Contain    ${word}    ${data}

Validate that the article has been opened
    [Arguments]    ${article}

    Click    css=a >> text=Como regularizar CPF? Saiba como resolver pendências

Validate error message when searching for non-existent article
    [Arguments]    ${message}

    Wait For Elements State    css=.page-content
    ...    visible    5

    Get Text    css=.page-content p
    ...    equal
    ...    ${message}
