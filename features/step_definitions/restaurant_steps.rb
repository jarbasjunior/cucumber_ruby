When('I access the list of restaurants') do
  visit '/restaurants'
end

Given('that we have the following restaurants') do |restaurants_data|
  @restaurants_data = restaurants_data.hashes
end

Then('I see all restaurants of the list') do
  restaurants = all('.restaurant-item')
  @restaurants_data.each_with_index do |restaurant, index|
    expect(restaurants[index]).to have_text restaurant[:name].upcase
    expect(restaurants[index]).to have_text restaurant[:category]
    expect(restaurants[index]).to have_text restaurant[:dellivery_time]
    expect(restaurants[index]).to have_text restaurant[:rating]
  end
end
