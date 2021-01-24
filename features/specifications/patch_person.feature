#language: pt

@patch
Funcionalidade: Person
Realizar atualização parcial de cadastro de pessoas no sistema

Contexto:
    Dado que os métodos estejam instanciados

@patch_person_by_id
Esquema do Cenário: Realizar atualização parcial de cadastro de pessoas
    Dado que seja informado o id <id> da pessoa
    E que seja informado o nome <name> da pessoa
    E seja informado a cidade <city> da pessoa
    E seja informado o estado <state> da pessoa
    Quando realizar o request de atualização parcial de cadastro
    Então deverá ser exibido o cadastro atualizado
Exemplos:
    |  id  |      name             |       city              |  state   |
    |   1  |        ""             |   "Cidade alterada 1"   |   "OT"   |
    |   2  |  "Pessoa 2 alterada"  |             ""          |   "OT"   |
    |   3  |  "Pessoa 3 alterada"  |   "Cidade alterada 3"   |    ""    |
    |   4  |  "Pessoa 4 alterada"  |            ""           |    ""    |

@patch_name
Esquema do Cenário: Realizar atualização de nome de pessoas
    Dado que seja informado o id <id> da pessoa
    E que seja informado o nome <name> da pessoa
    Quando realizar o request de atualização parcial de cadastro
    Então deverá ser exibido o cadastro atualizado
Exemplos:
    |  id  |      name             |   
    |   1  |  "Pessoa 1 alterada"  |
    |   2  |  "Pessoa 2 alterada"  |
    |   3  |  "Pessoa 3 alterada"  |
    |   4  |  "Pessoa 4 alterada"  |