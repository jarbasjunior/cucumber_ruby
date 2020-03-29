Feature: Remove to cart

  As a user
  I want to remove items from my cart
  To edit or redo my order

  Scenario: Remove an item from the cart
    Given that I have the following products in the cart?
      | product                | price    |
      | Cup Cake               | R$ 8,70  |
      | Donut                  | R$ 2,50  |
      | Pão Artesanal Italiano | R$ 15,90 |
    When I remove only an item
    And the total amount must be 'R$ 18,40'

  Scenario: Remove all items from the cart
    Given that the products desireds are:
      | product                | price    |
      | Cup Cake               | R$ 8,70  |
      | Donut                  | R$ 2,50  |
      | Pão Artesanal Italiano | R$ 15,90 |
    When I remove all items
    Then I see the message 'Seu carrinho está vazio'
