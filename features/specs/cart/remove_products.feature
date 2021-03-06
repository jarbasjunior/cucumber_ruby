@bread_bakery
Feature: Remove to cart

  As a user
  I want to remove items from my cart
  To edit or redo my order

  Background: Items in the cart
    Given that I have the following products in the cart
      | product                | price    | quantity |
      | Cup Cake               | R$ 8,70  | 1        |
      | Donut                  | R$ 2,50  | 1        |
      | Pão Artesanal Italiano | R$ 15,90 | 1        |

  Scenario Outline: Remove item
    When I remove only the <product>
    Then the total amount must be <amount>
    Examples:
      | product                  | amount     |
      | 'Cup Cake'               | 'R$ 18,40' |
      | 'Donut'                  | 'R$ 24,60' |
      | 'Pão Artesanal Italiano' | 'R$ 11,20' |

  Scenario: Remove all items from the cart
    Given I remove all items
    Then I see the message 'Seu carrinho está vazio'

  Scenario: Clean cart
    Given I clean the cart
    Then I see the message 'Seu carrinho está vazio'