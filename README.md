 # 🤖 Portfólio de QA. Testes Automatizados com Robot Framework



![Testes](https://github.com/DeboraZytoQA/qa-portfolio-robot/actions/workflows/tests.yml/badge.svg)



Versão do meu portfólio de automação usando *Robot Framework* — uma ferramenta muito usada em times de QA por ter uma sintaxe legível, próxima da linguagem natural, o que facilita a leitura dos testes até por quem não é da área técnica.

## 🖥️ Site testado

Os testes rodam contra o [Sauce Demo](https://www.saucedemo.com/), site oficial da Sauce Labs para prática de automação.

## 🛠️ Tecnologias

- *Robot Framework* — framework de automação orientado a palavras-chave (keyword-driven)
- *SeleniumLibrary* — biblioteca que conecta o Robot Framework ao navegador
- *GitHub Actions* — roda os testes automaticamente a cada push

## 📁 Estrutura do projeto
 qa-portfolio-robot/
├── .github/workflows/tests.yml
├── resources/
│   └── comum.robot        # Keywords e variáveis reutilizadas pelos testes
├── tests/
│   ├── login.robot
│   └── carrinho.robot
├── .gitignore
├── requirements.txt
└── README.md
 ## ✅ O que está sendo testado

| # | Caso de teste | Tipo |
|---|---|---|
| CT01 | Login com credenciais válidas | Positivo |
| CT02 | Login com usuário bloqueado | Negativo |
| CT03 | Login com senha inválida | Negativo |
| CT04 | Login sem preencher usuário | Validação |
| CT05 | Adicionar produto ao carrinho | Positivo |
| CT06 | Remover produto do carrinho | Positivo |
| CT07 | Acessar carrinho vazio | Positivo |

## ▶️ Como rodar na sua máquina

Pré-requisitos: [Python 3.10+](https://www.python.org/downloads/) e o *Google Chrome* instalados.

```bash
# 1. Clonar o repositório
git clone https://github.com/SEU-USUARIO/qa-portfolio-robot.git
cd qa-portfolio-robot

# 2. Instalar as dependências
pip install -r requirements.txt

# 3. Rodar todos os testes
robot --outputdir resultados tests/
'''

Depois de rodar, abra o arquivo resultados/report.html no navegador — o Robot Framework gera automaticamente um relatório visual completo, com o resultado de cada caso de teste.

Se quiser ver o navegador abrindo de verdade (em vez de rodar invisível), edite a variável ${BROWSER} em resources/comum.robot, trocando headlesschrome por chrome.

## 🔁 Integração Contínua

A cada push ou pull request na branch main, os testes rodam automaticamente pelo *GitHub Actions*, em modo headless. O relatório fica disponível como artefato para download ao final da execução.

## 📌 Próximos passos

- [ ] Adicionar testes do fluxo de checkout completo
- [ ] Organizar os testes com tags (smoke, regressão)
- [ ] Adicionar testes de API com a RequestsLibrary
Feito por *Débora Zyto* — [LinkedIn](https://www.linkedin.com/in/debora-esteves-zytoti) · [GitHub](https://github.com/DeboraZytoQA/QA-Portifolio)
