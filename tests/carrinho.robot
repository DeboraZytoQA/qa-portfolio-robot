* Settings *
Documentation    Casos de teste do carrinho de compras do Sauce Demo.
Resource         ../resources/comum.robot
Test Setup       Login Padrao
Test Teardown    Close All Browsers


* Keywords *
Login Padrao
    [Documentation]    Abre o navegador e loga com o usuário padrão antes de cada teste.
    Abrir Navegador
    Fazer Login    standard_user    secret_sauce
    Wait Until Element Is Visible    class:title    timeout=10s
    Sleep 1s


* Test Cases *
CT05 - Adicionar Produto Ao Carrinho Deve Atualizar Contador
    [Documentation]    Adicionar um produto deve exibir "1" no ícone do carrinho.
    Wait Until Element Is Visible    id:add-to-cart-sauce-labs-backpack    timeout=10s
    Click Element    id:add-to-cart-sauce-labs-backpack
    Wait Until Element Contains    class:shopping_cart_badge    1    timeout=10s

CT06 - Remover Produto Do Carrinho Deve Ocultar Contador
    [Documentation]    Remover o único produto do carrinho deve fazer o contador sumir.
    Wait Until Element Is Visible    id:add-to-cart-sauce-labs-backpack    timeout=10s
    Click Element    id:add-to-cart-sauce-labs-backpack
    Wait Until Element Is Visible    id:remove-sauce-labs-backpack    timeout=10s
    Click Element    id:remove-sauce-labs-backpack
    Wait Until Element Is Not Visible    class:shopping_cart_badge    timeout=10s

CT07 - Acessar Carrinho Vazio Sem Adicionar Produtos
    [Documentation]    Ao entrar direto no carrinho sem adicionar nada, ele deve estar vazio.
    Wait Until Element Is Visible    class:shopping_cart_link    timeout=10s
    Click Element    class:shopping_cart_link
    Wait Until Location Contains    cart.html    timeout=10s
    Page Should Not Contain Element    class:cart_item
