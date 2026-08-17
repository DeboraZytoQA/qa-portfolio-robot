* Settings *
Documentation    Casos de teste do carrinho de compras do Sauce Demo.
Resource         ../resources/comum.robot
Suite Setup      Abrir Navegador
Suite Teardown   Close All Browsers
Test Setup       Login Padrao


* Keywords *
Login Padrao
    [Documentation]    Vai até a página e loga com o usuário padrão antes de cada teste.
    Go To    ${URL}
    Fazer Login    standard_user    secret_sauce


* Test Cases *
CT05 - Adicionar Produto Ao Carrinho Deve Atualizar Contador
    [Documentation]    Adicionar um produto deve exibir "1" no ícone do carrinho.
    Click Element    id:add-to-cart-sauce-labs-backpack
    Element Text Should Be    class:shopping_cart_badge    1

CT06 - Remover Produto Do Carrinho Deve Ocultar Contador
    [Documentation]    Remover o único produto do carrinho deve fazer o contador sumir.
    Click Element    id:add-to-cart-sauce-labs-backpack
    Click Element    id:remove-sauce-labs-backpack
    Element Should Not Be Visible    class:shopping_cart_badge

CT07 - Acessar Carrinho Vazio Sem Adicionar Produtos
    [Documentation]    Ao entrar direto no carrinho sem adicionar nada, ele deve estar vazio.
    Click Element    class:shopping_cart_link
    Location Should Contain    cart.html
    Page Should Not Contain Element    class:cart_item