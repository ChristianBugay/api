#language: pt

@person
Funcionalidade: Person
Recuperar dados das pessoas cadastradas no sistema

Contexto:
    Dado que os métodos estejam instanciados

@get_persons
Cenário: Consultar todas as pessoas
    Dado que existam pessoas cadastradas
    Quando buscar por estas pessoas
    Então deverão ser exibidas as pessoas cadastradas

@get_person_by_id
Esquema do Cenário: Consultar pessoas por ID
    Dado que existam pessoas cadastradas
    Quando buscar uma pessoa por id <id>
    Então deverá ser exibida a pessoa correspondete a este id
    E o código do retorno será <returnCode>
    E a mensagem será <message>
Exemplos:
    |  id  | returnCode |      message        |
    |  23   | 200        |      "OK"           |
    |  22   | 404        |      "Not Found"           |
    # | 9999 | 404        |     "Not Found"     |