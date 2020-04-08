Before do
  @menu_page = MenuPage.new
  @order_page = OrderPage.new
  @navbar_page = NavbarPage.new
  @passagens_page = PassagensAereasPage.new
  @restaurant_page = RestaurantPage.new
  page.current_window.resize_to(1440, 900)
end

Before('@bread_bakery') do
  visit '/restaurants/bread-bakery/menu'
end

Before('@green_food') do
  visit '/restaurants/green-food/menu'
end
