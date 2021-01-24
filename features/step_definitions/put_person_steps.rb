Quando("realizar o request de atualização completa de cadastro") do
    @response = @methods.put_person_by_id($mock_api.id)
end