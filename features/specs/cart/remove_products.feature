@bread_bakery @tmp
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
    When I remove only the <item>
    Then the total amount must be <amount>
    Examples:
    | item | amount   |
    | 0    | 'R$ 18,40' |
    | 1    | 'R$ 24,60' |
    | 2    | 'R$ 11,20' |

  Scenario: Remove all items from the cart
    Given I remove all items
    Then I see the message 'Seu carrinho está vazio'

  Scenario: Clean cart
    Given I clean the cart
    Then I see the message 'Seu carrinho está vazio'