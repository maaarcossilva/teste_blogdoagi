## Automação Frontend Blog do AGI

### Passso a passo para instalação
- Instale o python: https://www.python.org/downloads/release/python-3121/
	- No momento da instalação marque a opção (Add python.exe to PATH)
- Instale o node: https://nodejs.org/en
	- v18.12.1
- Instale o robotframework 
	- Abra o terminal e digite o comando: pip install robotframework
- Instale a biblioteca browser: 
	- Digite o comando no terminal: pip install robotframework-browser
	- Depois de instalado dê o comando: rfbrowser init

### Clone do projeto
- Abra o repositório e copie o link http https://github.com/maaarcossilva/teste_blogdoagi.git
- Depois abra o terminal e digite git clone https://github.com/maaarcossilva/teste_blogdoagi.git

### Executando testes
- Para executar a suíte de testes completa digite:
	- robot -d ./logs tests/search.robot
- Caso queira executar por tags digite:
	- robot -d ./logs -i regressive tests							(Caso queira rodar um regressivo)
	- robot -d ./logs -i search_and_access tests/search.robot     	(Um único cenário)
	- robot -d ./logs -i search_for_keyword tests/search.robot    	(Um único cenário)
	- robot -d ./logs -i article_not_exist tests/search.robot      	(Um único cenário)

### Cenários contemplados
- (Search for an article by exact name and access)
	- Deve realizar a pesquisa de um artigo por nome exato e acessar
- (Search with any keyword and get results)
	- Deve realizar a pesquisa com alguma palavra chave e obter resultados
- (Should return error message when searching for non-existent article)
	- Deve retornar mensagem de erro ao pesquisar artigo inexistente

### Escolha de navegadores para rodar o teste
- No arquivo Base.resource você pode definir quais navegadores rodar os testes
	- Basta alterar o valor da variavel ${BROWSER}.
	- Os navegadores suportados são: chromium, firefox ou webkit
- Caso queira rodar visualizando a interface gráfica
	- Deixe como está no código utilizando headless=False
	- Caso queira rodar sem interface gráfica, altere o valor da variavel para headless=True

### Logs gerados
- Ao final de cada execução dos testes, serão gerados alguns artefatos:
	- O artefato para acompanhamento dos logs está localizado na pasta: logs/log.html
	- Na keyword "TEARDOWN base.End browser" terá um print do resultado do teste