Dado("que os métodos estejam instanciados") do
    @methods = Methods.new()
end

Dado("que seja informado o id {int} da pessoa") do |id|
    $mock_api.id = id
end

Dado("que seja informado o nome {string} da pessoa") do |name|
    $mock_api.name = name
end

Dado("seja informado a cidade {string} da pessoa") do |city|
    $mock_api.city = city
end
  
Dado("seja informado o estado {string} da pessoa") do |state|
    $mock_api.state = state
end