Before do
  @menu_page = MenuPage.new
  @navbar_page = NavbarPage.new
  @restaurant_page = RestaurantPage.new
  page.current_window.resize_to(1440, 900)
end

Before('@bread_bakery') do
  visit '/restaurants/bread-bakery/menu'
end
