#language: pt

@post
Funcionalidade: Person
Realizar cadastro de pessoas no sistema

Contexto:
    Dado que os métodos estejam instanciados

@post_person
Esquema do Cenário: Realizar cadastro de uma pessoa
    Dado que seja informado o nome <name> da pessoa
    E seja informado a cidade <city> da pessoa
    E seja informado o estado <state> da pessoa
    Quando realizar o request do cadastro
    Então deverá ser exibida a pessoa recém cadastrada
Exemplos:
    |      name           |    city            |  state  |
    |  "Christian Bugay"  |  "Maringá"         |  "PR"   |
    |  "Roberto Carlos"   |  "São Paulo"       |  "SP"   |
    |  "Jorge Amado"      |  "Belém"           |  "PA"   |
    |  "Róbisso Almeida"  |  "Quinta do Sol"   |  "PR"   |
