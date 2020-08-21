Dado("marquei {int} produtos da coleção para comparação") do |qty|
    @app.search.select_many_procduct(qty)
  end

Quando("faço a comparação") do
    @app.search.compare_product
  end