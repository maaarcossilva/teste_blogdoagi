*** Settings ***
Documentation    Setup

Library    Browser

Resource    pages/Landing.resource
Resource    pages/SearchResults.resource
Resource    pages/Article.resource


*** Variables ***
${URL_BASE}    https://blogdoagi.com.br/
${BROWSER}    chromium

*** Keywords ***
Start browser
    New Browser    browser=${BROWSER}    headless=False
    New Page       ${URL_BASE}  

End browser
    Take Screenshot
    Close Browser

