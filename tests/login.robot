
* Settings *
Documentation    Casos de teste da tela de login do Sauce Demo (https://www.saucedemo.com).
...              Site oficial da Sauce Labs para prática de automação de testes.
Resource         ../resources/comum.robot
Test Setup       Abrir Navegador
Test Teardown    Close All Browsers


* Test Cases *
CT01 - Login Com Credenciais Validas Deve Acessar Produtos
    [Documentation]    Login válido deve levar até a página de produtos.
    Fazer Login    standard_user    secret_sauce
    Wait Until Element Is Visible    class:title    timeout=10s
    Element Text Should Be    class:title    Products

CT02 - Login Com Usuario Bloqueado Deve Exibir Erro
    [Documentation]    Usuário bloqueado não deve conseguir logar.
    Fazer Login    locked_out_user    secret_sauce
    Wait Until Element Contains    css:[data-test="error"]    locked out    timeout=10s

CT03 - Login Com Senha Invalida Nao Deve Permitir Acesso
    [Documentation]    Senha incorreta não deve permitir login.
    Fazer Login    standard_user    senha_errada
    Wait Until Element Contains    css:[data-test="error"]    do not match    timeout=10s
   ${local}    Get Location
   Should Not Contain    ${local}    inventory.html

CT04 - Login Sem Preencher Usuario Deve Exibir Erro
    [Documentation]    O campo de usuário é obrigatório.
    Fazer Login    ${EMPTY}    secret_sauce
    Wait Until Element Contains    css:[data-test="error"]    Username is required    timeout=10s
