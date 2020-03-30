When('I select the restaurant {string}') do |restaurant|
  @restaurant_page.select_restaurant(restaurant)
end

Then('I see the following products available on the restaurant menu {string}:') do |restaurant, products_data|
  @navbar_page.go_to('Restaurantes')
  @restaurant_page.select_restaurant(restaurant)
  products_data.hashes.each_with_index do |product, index|
    expect(@menu_page.list_all_products[index]).to have_text product[:product].upcase
    expect(@menu_page.list_all_products[index]).to have_text product[:description]
    expect(@menu_page.list_all_products[index]).to have_text product[:price]
  end
end

Then('I see the following restaurant information {string}:') do |restaurant, table|
  @navbar_page.go_to('Restaurantes')
  @restaurant_page.select_restaurant(restaurant)
  infos = table.rows_hash
  expect(@menu_page.restaurant_details).to have_text infos[:category]
  expect(@menu_page.restaurant_details).to have_text infos[:description]
  expect(@menu_page.restaurant_details).to have_text infos[:opening_hours]
end
