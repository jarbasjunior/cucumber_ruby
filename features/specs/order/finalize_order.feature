@green_food
Feature: Finalize Order

  As user
  I want finalize my order
  For receive my items at my house

  Scenario: Checkout with meal card
    Given that I finalized my order with the following products
      | quantity | name                | description                             | subtotal |
      | 1        | Suco Detox          | Suco de couve, cenoura, salsinha e maçã | R$ 14,90 |
      | 2        | Hamburger de Quinoa | Cheio de fritas e muito saboroso        | R$ 21,00 |
    And I informed my delivery details
      | name       | buyer           |
      | email      | buyer@email.com |
      | street     | Fake Street     |
      | number     | 1234            |
      | complement | Fake complement |
    When I finalize my order with 'Cartão Refeição'
    Then must be see the following message
    """
    Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
    """
