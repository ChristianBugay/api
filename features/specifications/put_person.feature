#language: pt
@put
Funcionalidade: Person
Realizar atualização completa de cadastro de pessoas no sistema

Contexto:
    Dado que os métodos estejam instanciados

@put_person_by_id
Esquema do Cenário: Realizar atualização completa de cadastro de pessoas
    Dado que seja informado o id <id> da pessoa
    E que seja informado o nome <name> da pessoa
    E seja informado a cidade <city> da pessoa
    E seja informado o estado <state> da pessoa
    Quando realizar o request de atualização completa de cadastro
    Então deverá ser exibido o cadastro atualizado
Exemplos:
    |  id  |      name                |       city                  |  state   |
    |   1  |  "Pessoa 1 alterada put" |   "Cidade alterada 1"       |   "OT"   |
    |   2  |  "Pessoa 2 alterada"     |   "Cidade alterada 2 put"   |   "OT"   |
    |   3  |  "Pessoa 3 alterada"     |   "Cidade alterada 3"       |   "PT"   |
    |   4  |  "Pessoa 4 alterada put" |   "Cidade alterada 4 put"   |   "PT"   |