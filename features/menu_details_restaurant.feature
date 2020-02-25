Feature: Details about store in the menu

  As user
  Wish I to see details about store
  To let me know about its category, detailed description and opening hours him

  @info
  Scenario: Details restaurant
    Given I access the list of restaurants
    Then I see the following restaurant information 'Bread & Bakery':
      | category      | Padaria                                                                                      |
      | description   | A Bread & Bakery tem 40 anos de mercado. Fazemos os melhores doces e pães. Compre e confira. |
      | opening_hours | Funciona de segunda à sexta, de 8h às 23h                                                    |
    And I see the following restaurant information 'Burger House':
      | category      | Hamburgers                               |
      | description   | 40 anos se especializando em trash food. |
      | opening_hours | Funciona todos os dias, de 10h às 22h    |
    And I see the following restaurant information 'Coffee Corner':
      | category      | Cafeteria                                               |
      | description   | A Coffe Corner foi eleita a melhor cafeteria da cidade. |
      | opening_hours | Funciona de segunda à sábado, de 6h às 22h              |
    And I see the following restaurant information 'Green Food':
      | category      | Saudável                                                             |
      | description   | Comida saudável é no Green Food. Compramos barato, vendemos caro. ;) |
      | opening_hours | Somente em horário de almoço, das 11h às 15h                         |
    And I see the following restaurant information 'Ice Cream':
      | category      | Sorvetes                                |
      | description   | A Ice Cream é uma sorveteria inovadora. |
      | opening_hours | Funciona todos os dias, de 10h às 1h    |
    And I see the following restaurant information 'Tasty Treats':
      | category      | Doces                                      |
      | description   | A doceria com mais tradição da cidade      |
      | opening_hours | Funciona de segunda à sábado, de 8h às 23h |
