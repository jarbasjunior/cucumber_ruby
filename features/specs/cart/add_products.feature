@bread_bakery
Feature: Add to cart

  As user
  I want to add items in my cart
  To place be my order

  Scenario: Add a unit to cart
    Given that the product is 'Cup Cake'
    And the price is 'R$ 8,70'
    When I add 1 item(s) this product
    And 1 item(s) must be added to the cart
    And the total amount must be 'R$ 8,70'

  Scenario: Add two units to cart
    Given that the product is 'Donut'
    And the price is 'R$ 2,50'
    When I add 2 item(s) this product
    Then 2 item(s) must be added to the cart
    And the total amount must be 'R$ 5,00'

  @tmp
  Scenario: Add multipe products to cart
    Given that the products desireds are:
      | product                | price    |
      | Cup Cake               | R$ 8,70  |
      | Donut                  | R$ 2,50  |
      | Pão Artesanal Italiano | R$ 15,90 |
    When I add all items
    Then I see all items to the cart
    And the total amount must be 'R$ 27,10'
