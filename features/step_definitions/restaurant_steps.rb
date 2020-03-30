When('I access the list of restaurants') do
  visit '/restaurants'
end

Given('that we have the following restaurants') do |restaurants_data|
  @restaurants_data = restaurants_data.hashes
end

Then('I see all restaurants of the list') do
  @restaurants_data.each_with_index do |restaurant, index|
    expect(@restaurant_page.list_all_restaurants[index]).to have_text restaurant[:name].upcase
    expect(@restaurant_page.list_all_restaurants[index]).to have_text restaurant[:category]
    expect(@restaurant_page.list_all_restaurants[index]).to have_text restaurant[:dellivery_time]
    expect(@restaurant_page.list_all_restaurants[index]).to have_text restaurant[:rating]
  end
end
