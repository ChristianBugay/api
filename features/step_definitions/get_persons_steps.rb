Dado("que existam pessoas cadastradas") do
    #fazer um get
end
  
Quando("buscar por estas pessoas") do
    @response = @methods.get_persons()
end

Então("deverão ser exibidas as pessoas cadastradas") do
    log @response
end

Quando("buscar uma pessoa por id {int}") do |id|
    @response = @methods.get_person_by_id(id)
end
  
Então("deverá ser exibida a pessoa correspondete a este id") do
    log @response
end
  
Então("o código do retorno será {int}") do |codigo_retorno|
    expect(@response.code).to eq(codigo_retorno)
end
  
Então("a mensagem será {string}") do |mensagem|
    expect(@response.message).to eq(mensagem)
end