* Settings *
Documentation    Casos de teste do carrinho de compras do Sauce Demo.
Resource         ../resources/comum.robot
Suite Setup      Abrir Navegador
Suite Teardown   Close All Browsers
Test Setup       Login Padrao


* Keywords *
Login Padrao
    [Documentation]    Vai até a página, garante sessão limpa e loga com o usuário padrão antes de cada teste.
    Preparar Pagina De Login
    Fazer Login    standard_user    secret_sauce
    Wait Until Element Is Visible    class:title    timeout=10s


* Test Cases *
CT05 - Adicionar Produto Ao Carrinho Deve Atualizar Contador
    [Documentation]    Adicionar um produto deve exibir "1" no ícone do carrinho.
    Click Element    id:add-to-cart-sauce-labs-backpack
    Wait Until Element Contains    class:shopping_cart_badge    1    timeout=10s

CT06 - Remover Produto Do Carrinho Deve Ocultar Contador
    [Documentation]    Remover o único produto do carrinho deve fazer o contador sumir.
    Click Element    id:add-to-cart-sauce-labs-backpack
    Click Element    id:remove-sauce-labs-backpack
    Wait Until Element Is Not Visible    class:shopping_cart_badge    timeout=10s

CT07 - Acessar Carrinho Vazio Sem Adicionar Produtos
    [Documentation]    Ao entrar direto no carrinho sem adicionar nada, ele deve estar vazio.
    Click Element    class:shopping_cart_link
    Wait Until Location Contains    cart.html    timeout=10s
    Page Should Not Contain Element    class:cart_item
