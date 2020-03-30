class RestaurantPage
  include Capybara::DSL

  def select_restaurant(restaurant)
    find('.restaurant-item', text: restaurant.upcase).click
  end
end
