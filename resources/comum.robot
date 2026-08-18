* Settings *
Documentation    Keywords e variáveis reutilizadas pelos casos de teste.
Library          SeleniumLibrary


* Variables *
${URL}         https://www.saucedemo.com/
${BROWSER}     headlesschrome


* Keywords *
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    1366    768
    Set Selenium Implicit Wait    5s

Fazer Login
    [Documentation]    Preenche usuário e senha e clica em entrar.
    [Arguments]    ${usuario}    ${senha}
    Input Text        id:user-name    ${usuario}
    Input Password    id:password     ${senha}
    Click Button       id:login-button
