Quando("realizar o request de atualização parcial de cadastro") do
    @response = @methods.patch_person_by_id($mock_api.id)
end
  
Então("deverá ser exibido o cadastro atualizado") do
    log @response
end