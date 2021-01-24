#language: pt

@delete
Funcionalidade: Person
Realizar remoção de cadastro de pessoas no sistema

Contexto:
    Dado que os métodos estejam instanciados

@delete_person_by_id
Esquema do Cenário: Realizar remoção de cadastro de pessoas
    Dado que seja informado o id <id> da pessoa
    Quando realizar o request de delete de cadastro
    Então deverá ser exibido sucesso ao deletar
Exemplos:
    |   id   |
    |    22   |
