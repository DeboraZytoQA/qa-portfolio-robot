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
    Set Selenium Implicit Wait    10s

Fazer Login
    [Documentation]    Preenche usuário e senha e clica em entrar.
    [Arguments]    ${usuario}    ${senha}
    Input Text        id:user-name    ${usuario}
    Input Password    id:password     ${senha}
    Click Button       id:login-button

Preparar Pagina De Login
    [Documentation]    Garante que cada teste começa do zero, sem sessão anterior.
    Go To    ${URL}
    Delete All Cookies
    Reload Page
