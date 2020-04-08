Before do
  @menu_page = MenuPage.new
  @order_page = OrderPage.new
  @navbar_page = NavbarPage.new
  @restaurant_page = RestaurantPage.new
  page.current_window.resize_to(1440, 900)
end

Before('@bread_bakery') do
  visit '/restaurants/bread-bakery/menu'
end

Before('@green_food') do
  visit '/restaurants/green-food/menu'
end

After do
  screenshot_file = page.save_screenshot('log/schreenshot.png')
  image_base64 = Base64.encode64(File.open(screenshot_file, 'rb').read)
  embed(image_base64, 'image/png', 'Evidence')
end