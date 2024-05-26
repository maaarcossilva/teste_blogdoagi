*** Settings ***
Documentation    Actions and Elements of Article Page

Library    Browser


*** Variables ***
${article_title_element}    css=h1 >> text=Como regularizar CPF? Saiba como resolver pendências

*** Keywords ***
I should see the title of the article
    [Arguments]    ${article_title}

    Wait For Elements State    ${article_title_element}
    ...    visible    5

    Get Text    ${article_title_element}
    ...    equal
    ...    Como regularizar CPF? Saiba como resolver pendências