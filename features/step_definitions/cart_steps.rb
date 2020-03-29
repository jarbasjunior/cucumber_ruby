Given('that the product is {string}') do |product|
  @product = product
end

Given('the price is {string}') do |price|
  @price = price
end

When('I add a unit') do
  find('.menu-item-info-box', text: @product.upcase).find('.add-to-cart').click
end

Then('{int} item must be added to the cart') do |quantity|
  @cart = find('#cart')
  expect(@cart).to have_text "(#{quantity}x) #{@product}"
end

Then('the total amount must be {string}') do |amount|
  current_amount = @cart.find('tr', text: 'Total:').find('td')
  expect(current_amount.text).to eql amount
end
