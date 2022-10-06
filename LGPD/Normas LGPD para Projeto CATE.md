# Normas LGPD para Projeto CATE

## Dados:

Os dados percorrerão 5 etapas, sendo elas:

1. **Extração:** Base em Excel extraída para o banco de dados. Conforme acordado com a empresa Dom Rock (controladora) nenhum dado será descartado na base fornecida, ou seja, a análise deverá ser feita com todos os dados. Estes dados serão armazenados em um banco de dados Mongo Cloud que possui estrutura NoSQL. 
2. **Limpeza dos dados:** Verificação de erros nos dados do banco. Nesta etapa será verificado se existe algum dado com erro ou nulo e o mesmo será tratado ou descartado de acordo com orientação da empresa controladora. 
3. **Escopo de dados:** Criação de uma nova coleção de dados necessários para o produto final. Nesta etapa os dados limpos serão inseridos em uma nova collection contendo somente as informações necessárias para geração de relatórios.
4. **Banco relacional:** Criação de um banco relacional DW. Um novo banco relacional será criado com os dados vindos da etapa anterior, preparando assim para exibição na ferramenta Power BI.
5. **Exibição dos dados:** Exibição dos dados em forma de gráfico. Os dados são exibidos trazendo as informações através de gráficos e relatórios por beneficiários dos quatro possíveis casos que podem ocorrer. 

## Acessos:

A manipulação dos dados será feita através de dois níveis de acesso. 

* **Nível 1:** Usuários responsáveis pelas etapas *1 - Extração* e *2 - Limpeza de dados*. Somente estes usuários terão acesso a base de dados completa e ao banco de dados Mongodb Cloud. 

* **Nível 2:** Usuários responsáveis pelas etapas *3 – Escopo de dados*, *4 – Banco relacional* e *5 – Exibição dos dados*, podendo manipular os dados já tratados pelos usuários de Nível 1. 

