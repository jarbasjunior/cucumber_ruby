Feature: Restaurants

  So that I can know which restaurants are available with delivery time and rating
  Being a user who wants to order food
  I can to access the list of restaurants

  Scenario: Available restaurants
    Given that we have the following restaurants
      | name           | category   | delivery_time | rating |
      | Bread & Bakery | Padaria    | 25 minutos    | 4.9    |
      | Burger House   | Hamburgers | 30 minutos    | 3.5    |
      | Coffee Corner  | Cafeteria  | 20 minutos    | 4.8    |
    When I access the list of restaurants
    Then I see all restaurants of the list