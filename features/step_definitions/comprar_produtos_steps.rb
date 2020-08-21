Então("eu vejo o resultado da comparação entre os produtos") do
    @app.product_compare.wait_until_compare_result_visible
    expect(
        @app.product_compare.compare_result.text
    ).to include 'Resultado da Comparação'
end

Então("eu vejo a mensagem de limite de produtos para comparação excedido") do
    @app.search.wait_until_msg_erro_visible
    expect(
        @app.search.msg_erro.text
    ).to include 'Máximo de 3 produtos para comparar'
  end
  
Então("vejo a mensagem de que produtos precisam ser selecionados para comparação") do
    @app.search.wait_until_msg_erro_visible
    expect(
        @app.search.msg_erro.text
    ).to include 'Mínimo de 2 produtos para comparar'
 end