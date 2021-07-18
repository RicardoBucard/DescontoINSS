# README


Esta é uma aplicação REST de Proponentes feita em Ruby on Rails usando JQuery, AJAX e banco de dados PostgreSQL. Através desta aplicação, é possível popular o banco de dados com um seed, assim como criar, editar, exibir e deletar proponentes através de interface no navegador de sua escolha.


### Instalação e primeiros passos

O primeiro passo a ser tomado é instalar o Ruby on Rails 5, em https://www.ruby-lang.org/pt/documentation/installation/ . Em seguida, instale o banco de dados, disponível em https://www.postgresql.org/download/ .

Após a instalação do PostgreSQL, é necessário configurar superusário e também o usuário do banco de dados da aplicação. Rode `sudo -u postgres createuser -s desconto` e, para acessar o console do PostegreSQL, execute `sudo -u postgres psql` e `\password desconto` e em seguida configure a senha do usuário como `desconto`.

Então clone o repositório e execute os seguintes comandos:
    - `bundle install` para instalar dependências
    - `rails db:migrate` para fazer as migrações do banco de dados
    - `rails s` para inicializar o servidor local

Após o servidor subir com sucesso, acesse `http://localhost:3000/` no seu navegador para utilizar o sistema.

### Como utilizar a aplicação

Para popular o banco de dados, rode o código abaixo no terminal dentro da pasta raiz do projeto.

```
rails db:seed
```

Para rodar teste unitário do model Proponente, execute o código abaixo.

```
rails test test/models/proponente_test.rb
```

Para rodar teste unitário do controller Proponente, execute o código abaixo.

```
rails test test/controllers/proponentes_controller_test.rb
```
Para rodar testes de sistema, certifique-se que o navegador Google Chrome esstá instalado no seu pc e execute o código abaixo.

```
rails test test/system/proponentes_test.rb
```