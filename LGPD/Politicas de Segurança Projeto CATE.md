# Políticas de segurança sistema CATE
1. **Recebimento dos dados**
<br>a. O controlador dos dados deverá realizar o upload das bases de dados através de um repositório criado no **Proton Drive**, onde somente os e-mails autorizados terão acesso. <br><br>
2. **Armazenamento local dos dados**
<br>a.	Será realizado o download das bases de dados através do **Proton Drive**. 
<br><br>b.	As bases de dados serão armazenadas em uma pasta segura criada pelo **VeraCrypt**.
<br><br>c.	As bases de dados armazenadas localmente devem obrigatoriamente estar criptografadas pelo **VeraCrypt**.
<br><br>d.	Os desenvolvedores do sistema CATE devem acessar somente as bases de dados armazenados pelo **VeraCrypt**. <br><br>
3. **Extração dos dados**
<br>a.	Os dados extraídos da planilha serão armazenados no banco de dados **MongoDB** através de uma conexão segura TLS/SSL. <br><br>
4. **Armazenamento externo dos dados**
<br>a. Os dados serão armazenados em um banco de dados **MongoDB** gerenciado pelo sistema CATE.
<br><br>b. Somente os usuários autorizados poderão acessar o banco de dados. <br><br>
5.	**Exclusão dos dados**
<br>a. Após a utilização da base de dados a mesma será armazenada dentro de um container VeraCrypt e este será excluído. <br><br>
6. **Armazenamento local dos LOGs**
<br>a. Os LOGs gerados pelo sistema CATE serão armazenados em pastas criptografadas criadas pelo **VeraCrypt**. <br><br>
7. **Armazenamento externo dos LOGs**
<br>a. Será feito o upload no **Proton Drive** das pastas criptografadas contendo os LOGs. <br><br>
8. **Solicitação dos LOGs**
<br>a. A solicitação dos LOGs deverá ser documentada, assinada pelo solicitante e encaminhada para a empresa **The Velopers** através dos controladores de dados.
<br><br>b. O acesso aos LOGs será permitido somente à empresa controladora dos dados. O link para acesso aos arquivos solicitados funcionará de forma somente leitura durante período constante na solicitação.
<br><br>c.	As solicitações serão avaliadas pela equipe **The Velopers** conforme necessidade apresentada.