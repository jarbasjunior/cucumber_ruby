Given('that the product is {string}') do |product|
  @product = product
end

Given('the price is {string}') do |price|
  @price = price
end

When('I add {int} item\(s) this product') do |quantity|
  quantity.times do
    find('.menu-item-info-box', text: @product.upcase).find('.add-to-cart').click
    message = find('.snackbar').text
    expect(message).to eql "Você adicionou o item #{@product}"
  end
end

Then('{int} item\(s) must be added to the cart') do |quantity|
  cart = find('#cart')
  expect(cart).to have_text "(#{quantity}x) #{@product}"
end

Then('the total amount must be {string}') do |amount|
  cart = find('#cart')
  current_amount = cart.find('tr', text: 'Total:').find('td')
  expect(current_amount.text).to eql amount
end

# list of products

Given('that the products desireds are:') do |table|
  @product_list = table.hashes
end

When('I add all items') do
  @product_list.each do |p|
    p[:quantity].to_i.times do
      find('.menu-item-info-box', text: p[:product].upcase).find('.add-to-cart').click
      message = find('.snackbar').text
      expect(message).to eql "Você adicionou o item #{p[:product]}"
    end
  end
end

Then('I see all items to the cart') do
  cart = find('#cart')
  @product_list.each do |p|
    expect(cart).to have_text "(#{p[:quantity]}x) #{p[:product]}"
  end
end

# remove items

Given('that I have the following products in the cart') do |table|
  @product_list = table.hashes
  @product_list.each do |p|
    p[:quantity].to_i.times do
      find('.menu-item-info-box', text: p[:product].upcase).find('.add-to-cart').click
      message = find('.snackbar').text
      expect(message).to eql "Você adicionou o item #{p[:product]}"
    end
  end
end

When('I remove only the {int}') do |item|
  cart = find('#cart')
  cart.all('table tbody tr')[item].find('.danger').click
  message = find('.snackbar').text
  expect(message).to have_text 'Você removeu o item'
end

Given('I remove all items') do
  @product_list.each do |p|
    find(:xpath, "//th[contains(.,'#{p[:product]}')]/..//i").click
    message = find('.snackbar')
    expect(message.text).to eql "Você removeu o item #{p[:product]}"
  end
end

Then('I see the message {string}') do |message|
  cart = find('#cart')
  expect(cart).to have_text message
end
