Quando("realizar o request do cadastro") do
    @response = @methods.post_person()
    expect(@response.code).to eq(201)
end
  
Então("deverá ser exibida a pessoa recém cadastrada") do
    @response = @methods.get_persons()
    log @response.body
end