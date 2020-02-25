Feature: Menu

  As user
  Wish I access the menu of the restaurant
  For I to see which are food options

  @menu
  Scenario: Product listing
    Given I access the list of restaurants
    Then I see the following products available on the restaurant menu 'Bread & Bakery':
      | restaurant     | product                | description                         | price    |
      | Bread & Bakery | Cup Cake               | Cup Cake recheado de Doce de Leite  | R$ 8,70  |
      | Bread & Bakery | Donut                  | Coberto com chantilly               | R$ 2,50  |
      | Bread & Bakery | Pão Artesanal Italiano | Pão artesanal com queijos italianos | R$ 15,90 |
    And I see the following products available on the restaurant menu 'Burger House':
      | restaurant   | product        | description                     | price    |
      | Burger House | Classic Burger | O clássico. Não tem como errar. | R$ 18,50 |
      | Burger House | Batatas Fritas | Batatas fritas crocantes        | R$ 5,50  |
      | Burger House | Refrigerante   | O refri mais gelado da cidade.  | R$ 4,50  |
    And I see the following products available on the restaurant menu 'Coffee Corner':
      | restaurant   | product                  | description                                                   | price    |
      | Coffe Corner | Cappuccino com Chantilly | Tradicional cappuccino com chantilly                          | R$ 9,90  |
      | Coffe Corner | Super Expresso           | Café expresso duplo.                                          | R$ 12,50 |
      | Coffe Corner | Starbucks Copycat        | O mais pedido da casa. O verdadeiro café americano pura água. | R$ 15,60 |
    And I see the following products available on the restaurant menu 'Green Food':
      | restaurant | product             | description                              | price    |
      | Green Food | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
      | Green Food | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 10,50 |
      | Green Food | Salada Ceasar       | Clássica salada ceasar.                  | R$ 33,90 |
    And I see the following products available on the restaurant menu 'Ice Cream':
      | restaurant | product              | description                                                  | price    |
      | Ice Cream  | Mega Sunday          | Sunday com várias bolas de sorvete a sua escolha             | R$ 21,50 |
      | Ice Cream  | Picolé de Brigadeiro | Picolé de brigadeiro recheado com côco.                      | R$ 8,50  |
      | Ice Cream  | Sorvete Simples      | Clássico sorvete de rua onde todos os sabores são idênticos. | R$ 1,50  |
    And I see the following products available on the restaurant menu 'Tasty Treats':
      | restaurant   | product                  | description                          | price    |
      | Tasty Treats | Cup Cake de Choc. Branco | Cup Cake de chocolate branco         | R$ 5,50  |
      | Tasty Treats | Bolo de Morango          | Bolo recheado e coberto com morangos | R$ 40,50 |
      | Tasty Treats | Fatia de Bolo            | Fatia de bolo de morango             | R$ 5,90  |
