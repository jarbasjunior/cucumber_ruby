class RestaurantPage
  include Capybara::DSL

  def select_restaurant(restaurant)
    find('.restaurant-item', text: restaurant.upcase).click
  end

  def list_all_restaurants
    all('.restaurant-item')
  end

  def load
    visit '/restaurants'
  end
end
