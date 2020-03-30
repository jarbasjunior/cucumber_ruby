@green_food
Feature: Checkout Cart

  As user
  I want to finalize my order
  To make the payment

  Scenario: Total order cost
    Given that I Added the following products in the cart
      | quantity | name                | description                             | subtotal |
      | 1        | Suco Detox          | Suco de couve, cenoura, salsinha e maçã | R$ 14,90 |
      | 2        | Hamburger de Quinoa | Cheio de fritas e muito saboroso        | R$ 21,00 |
    When I finalize my order
    Then the total value of the items must be 'R$ 35,90'
    And the value freightage must be 'R$ 8,00'
    And the total order amount must be 'R$ 43,90'