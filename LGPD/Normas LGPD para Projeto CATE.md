# Normas LGPD para Projeto CATE

## Dados:

Os dados percorrerão 5 etapas, sendo elas:

1. **Extração:** Base em Excel extraída para o banco de dados. 
<br> Conforme acordado com a empresa Dom Rock (controladora) nenhum dado será descartado na base fornecida, ou seja, a análise deverá ser feita com todos os dados. 
<br> Estes dados serão armazenados em um banco de dados Mongo Cloud que possui estrutura NoSQL. <br><br>
2. **Limpeza dos dados:** Verificação de erros nos dados do banco. 
<br> Nesta etapa será verificado se existe algum dado com erro ou nulo e o mesmo será tratado ou descartado de acordo com orientação da empresa controladora. <br><br>
3. **Escopo de dados:** Criação de uma nova coleção de dados necessários para o produto final. 
<br> Nesta etapa os dados limpos serão inseridos em uma nova collection contendo somente as informações necessárias para geração de relatórios. <br><br>
4. **Banco relacional:** Criação de um banco relacional DW. 
<br> Um novo banco relacional será criado com os dados vindos da etapa anterior, preparando assim para exibição na ferramenta Power BI. <br><br>
5. **Exibição dos dados:** Exibição dos dados em forma de gráfico. 
<br> Os dados são exibidos trazendo as informações através de gráficos e relatórios por beneficiários dos quatro possíveis casos que podem ocorrer. 

## Acessos:

A manipulação dos dados será feita através de dois níveis de acesso. 

* **Nível 1:** Usuários responsáveis pelas etapas *1 - Extração* e *2 - Limpeza de dados*. 
<br> Somente estes usuários terão acesso a base de dados completa e ao banco de dados Mongodb Cloud. 

* **Nível 2:** Usuários responsáveis pelas etapas *3 – Escopo de dados*, *4 – Banco relacional* e *5 – Exibição dos dados*, podendo manipular os dados já tratados pelos usuários de Nível 1. 

## Logs:

Neste projeto há a rastreabilidade dos dados através de logs, onde para esse fim existem 
os seguintes modelos:

1. **Geral:** Salva as informações de toda manipulação de dados do projeto. <br><br>
2. **Anonymizer:** Salva todas as informações de anonimização dos dados utilizados nos processos. <br><br>
3. **Backuplog:** Concatena todos os processos executados no dia gerando assim um backup dos logs executados.
<br><br> Os logs são gerados automaticamente quando um processo é iniciado. Ao término é gerado arquivos que podem ser consultados posteriormente, facilitando a rastreabilidade das informações.
<br><br> Segue abaixo modelo de log gerado pelo projeto: <br><br>
 



