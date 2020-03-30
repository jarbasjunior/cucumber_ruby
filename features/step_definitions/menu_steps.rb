When('I select the restaurant {string}') do |restaurant|
  find('.restaurant-item', text: restaurant.upcase).click
end

Then('I see the following products available on the restaurant menu {string}:') do |restaurant, products_data|
  click_link('Restaurantes')
  @restaurant_page.select_restaurant(restaurant)
  products_data.hashes.each_with_index do |product, index|
    products_listing = all('.menu-item-info-box')
    expect(products_listing[index]).to have_text product[:product].upcase
    expect(products_listing[index]).to have_text product[:description]
    expect(products_listing[index]).to have_text product[:price]
  end
end

Then('I see the following restaurant information {string}:') do |restaurant, table|
  click_link('Restaurantes')
  @restaurant_page.select_restaurant(restaurant)
  details = find('#detail')
  infos = table.rows_hash
  expect(details).to have_text infos[:category]
  expect(details).to have_text infos[:description]
  expect(details).to have_text infos[:opening_hours]
end
