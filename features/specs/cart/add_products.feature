@bread_bakery
Feature: Add to cart

  As user
  I want to add items in my cart
  To place be my order

  @tmp
  Scenario: Add a unit to cart
    Given that the product is 'Cup Cake'
    And the price is 'R$ 8,70'
    When I add a unit
    Then 1 item must be added to the cart
    And the total amount must be 'R$ 8,70'

  Scenario: Add two units to cart
    Given that the product is 'Donut'
    And the price is 'R$ 2,50'
    When I add two units
    Then two units of this item must be added to the cart
    And the total amount must be 'R$ 5,00'

  Scenario: Add multipe products to cart
    Given that the products desireds are:
      | product                | price    |
      | Cup Cake               | R$ 8,70  |
      | Donut                  | R$ 2,50  |
      | Pão Artesanal Italiano | R$ 15,90 |
    When I add all items
    Then I see all items to the cart
    And the total amount must be 'R$ 27,10'
