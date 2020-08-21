Dado("que acessei o site") do
    @app.home.load
end

Dado("que pesquisei por {string} na página inicial") do |product|
    @app.home.search_product(product)
end