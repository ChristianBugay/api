Quando("realizar o request de delete de cadastro") do
    @response = @methods.delete_person_by_id($mock_api.id)
end
  
Então("deverá ser exibido sucesso ao deletar") do
    log @response
end