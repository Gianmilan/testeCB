# language: pt
Funcionalidade: Comparar dois produtos  
 Como cliente das Casas Bahia
 Quero comprar produtos    
 Para saber qual a melhor opção

Cenário: Comparar dois produtos
  
  Esquema do Cenário: Realizar a comparação entre <quantidade> iPhones
    E que pesquisei por "iphone" na página inicial
    E marquei <quantidade> produtos da coleção para comparação
    Quando faço a comparação
    Então eu vejo <resultado>
    Exemplos:
    |quantidade|resultado                                                |
    |2         |o resultado da comparação entre os produtos              |
    |5         |a mensagem de limite de produtos para comparação excedido|