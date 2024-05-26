*** Settings ***
Documentation    Test Suite of search


Resource    ../resources/Base.resource

Test Setup       Start browser
Test Teardown    End browser

*** Test Cases ***
Search for an article by exact name and access
    [Tags]    search_and_access    regressive

    ${data}    Set Variable    Como regularizar CPF? Saiba como resolver pendências

    Fill data search    ${data}
    I should see the search return according to the filter    ${data}
    Validate that the article has been opened    ${data}

Search with any keyword and get results
    [Tags]    search_for_keyword    regressive

    ${data}    Set Variable    CPF

    Fill data search    ${data}
    Check if it contains articles returned with keywords    ${data}

Should return error message when searching for non-existent article
    [Tags]    article_not_exist

    ${data}    Set Variable    Programação para QAs

    Fill data search    ${data}
    Validate error message when searching for non-existent article    Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.