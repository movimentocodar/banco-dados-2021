# banco-dados-2021

# Conteúdo

Plano de estudos com cursos, artigos e vídeos com o conteúdo do módulo de banco de dados.

- [Plano de estudos](https://cursos.alura.com.br/banco-de-dados-vnsueda-1622339247640-p164452)

Conteúdo adicional

- https://www.youtube.com/watch?v=122iQfGsljA

# Desafio

Desafio do módulo banco de dados do Movimento Codar 2021. Crie o gerencie o banco de dados de uma biblioteca!

## Pré-requisitos

- Instale o [MySQL](https://www.mysql.com/)
- Faça um fork desse projeto clicando no botão `Fork` no canto superior direito da página, conforme a imagem abaixo. 

![Realizando o fork](https://docs.github.com/assets/images/help/repository/fork_button.jpg)

- Acesse o fork que você criou e faça o clone para a sua máquina. Clique primeiro no botão `Code` e depois copie a URL. 

<img src="https://docs.github.com/assets/images/help/repository/https-url-clone-cli.png" alt="Copiando a URL" width="40%"/>

- Realize o clone com o comando `git clone` + a URL copiada.
- Abra o projeto no seu editor de texto preferido. Os arquivos que devem ser preenchidos estão na pasta `scripts`.


## Resolvendo o desafio

Você foi encarregado de criar e gerenciar o banco de dados de uma biblioteca.

Após conversar com o responsável pelo local para entender quais os requisitos, você obteve as seguintes informações:

---

O banco de dados deve armazenar as informações de Livros, Autores, Editoras, Empréstimos de Livros e Usuários da biblioteca.

Os dados que devem ser armazenados para o Livro são:
- Título
- Data de Publicação
- Quantidade de Páginas
- Idioma
- ISBN (Código de identificação do livro)
- Autores do livro (Pode ter mais de um autor)
- Editora do livro (Tem apenas uma editora)

Os dados que devem ser armazenados para o Autores são:
- Nome
- Sobrenome
- Data de nascimento

Os dados que devem ser armazenados para o Editoras são:
- Nome
- Data de fundação

Os dados que devem ser armazenados para os Usuários da biblioteca:
- Nome
- CPF (Apenas os números)
- E-mail
- Telefone (Não é obrigatório informar o telefone) 

Os dados que devem ser armazenados para os Empréstimos:
- O livro emprestado
- O usuário que emprestou
- Qual a data em que o livro foi retirada
- Quantidade de dias do empréstimo
- Se já foi devolvido ou não

Outras informações importantes que você obteve foi:
- A biblioteca tem livros disponíveis de apenas 3 idiomas (Português, Inglês e
Espanhol)
- O Código ISBN tem tamanho 10 e é composto de números. Por exemplo:
0011647585 ou 1436543245
- Não podem existir usuários com o mesmo CPF
---

## Criando o banco de dados

No arquivo `01-cria-bd-biblioteca.sql​` você deve:

- Criar um banco de dados de nome  `biblioteca`.
- Criar as tabelas necessárias para armazenar as informações levantadas nos requisitos.

## Inserindo informações

No arquivo `02-preenche-bd-biblioteca.sql​` você deve colocar as instruções necessárias para inserir dados de teste em todas as tabelas.
Crie ao menos 5 registros em cada tabela.

## Criando consultas

No arquivo `03-consultas-bd-biblioteca.sql` você deve criar as consultas para os seguintes cenários:

- A quantidade de livros por Idioma.

Formato do resultado:

<img src="https://user-images.githubusercontent.com/6104963/139593078-2dd3338f-ec14-4ee1-b724-0b3fb8e2154c.png" alt="Livros por idioma" />

---

- Livros que foram emprestados nos últimos sete dias, ordenados do empréstimo mais antigo para o mais recente. A data deve estar no formato mostrado abaixo.

Formato do resultado:

<img src="https://user-images.githubusercontent.com/6104963/139593079-c405cff0-f4a6-4bc4-830f-78ec7fabe96a.png" alt="Livros emprestados" />

---

- Todos os livros que contém a palavra 'java' na descrição (Independente de maiúsculas ou minúsculas).

Formato do resultado:

<img src="https://user-images.githubusercontent.com/6104963/139593081-3c357361-0f1e-401c-b170-56622301bd20.png" alt="Livros de Java" />

---

- Apresente os dados de livros emprestados que estão com a devolução atrasada e indique se tem ou não uma multa.

A regra do campo ​ MULTA ​ é: 
- Se dias em atraso for menor que 5 é SEM MULTA
- Se dias em atraso for maior ou igual a 5 é COM MULTA

Ordene do mais atrasado ao menos atrasado.

Formato do resultado: (Considere a data atual de 01/10/2020 para o exemplo):

<img src="https://user-images.githubusercontent.com/6104963/139593083-9b23d974-92a6-4e84-9886-f76fa13dc89c.png" alt="Livros atrasados" />

## Registrando exclusões de empréstimo

No arquivo `04-registro-exclusao-bd-biblioteca.sql` você deve:

- Crie uma ​ nova tabela​ que vai armazenar a informação de registros de empréstimo excluídos. Ela deve guardar:
    - Qual era o livro
    - Qual era o usuário
    - Qual era a data do empréstimo
    - Qual era a quantidade de dias de empréstimo
    - Em qual data foi excluída

- Crie uma ​ TRIGGER ​ que vai registrar essas informações ao excluir um registro da tabela de empréstimo.
- Crie um delete que remova todos os empréstimo em que o livro já foi devolvido.

**IMPORTANTE**: Execute todos os 4 scripts e certifique-se que estão funcionando corretamente.

## Submetendo a solução dos desafios

Ao terminar crie um `Pull Request` com a sua solução. 

Para isso clique em `Contribute` e `Open Pull Request`. Depois basta confirmar a operação. 

<img src="https://user-images.githubusercontent.com/6104963/125391895-911cd300-e37b-11eb-90d9-5b92cd8e5445.PNG" alt="Criando PR" width="40%"/>

## :trophy: Finalizaram o desafio :trophy: