Given('that the product is {string}') do |product|
  @product = product
end

Given('the price is {string}') do |price|
  @price = price
end

When('I add {int} item\(s) this product') do |quantity|
  quantity.times do
    @menu_page.add_item_cart(@product)
    expect(@menu_page.text_message_cart).to eql "Você adicionou o item #{@product}"
  end
end

Then('{int} item\(s) must be added to the cart') do |quantity|
  expect(@menu_page.box_cart).to have_text "(#{quantity}x) #{@product}"
end

Then('the total amount must be {string}') do |amount|
  expect(@menu_page.amount_cart.text).to eql amount
end

# list of products

Given('that the products desireds are') do |table|
  @product_list = table.hashes
end

When('I add all items') do
  @product_list.each do |p|
    p[:quantity].to_i.times do
      @menu_page.add_item_cart(p[:product])
      expect(@menu_page.text_message_cart).to eql "Você adicionou o item #{p[:product]}"
    end
  end
end

Then('I see all items to the cart') do
  @product_list.each do |p|
    expect(@menu_page.box_cart).to have_text "(#{p[:quantity]}x) #{p[:product]}"
  end
end

# remove items

Given('that I have the following products in the cart') do |table|
  @product_list = table.hashes
  steps %(
    When I add all items
  )
end

When('I remove only the {string}') do |product|
  @menu_page.remove_item(product)
  expect(@menu_page.text_message_cart).to have_text 'Você removeu o item'
end

Given('I remove all items') do
  @product_list.each do |p|
    p[:quantity].to_i.times do
      @menu_page.remove_item(p[:product])
      expect(@menu_page.text_message_cart).to eql "Você removeu o item #{p[:product]}"
    end
  end
end

Given('I clean the cart') do
  @menu_page.clean_cart
end

Then('I see the message {string}') do |message|
  expect(@menu_page.box_cart).to have_text message
end

Given('that I Added the following products in the cart') do |table|
  @product_list = table.hashes
  @product_list.each do |p|
    p[:quantity].to_i.times do
      @menu_page.add_item_cart(p[:name])
      expect(@menu_page.text_message_cart).to eql "Você adicionou o item #{p[:name]}"
    end
  end
end

When('I finalize my order') do
  @menu_page.finalize_order
end

Then('the total value of the items must be {string}') do |total_items|
  expect(@order_page.total_items.text).to eql total_items
end

Then('the value freightage must be {string}') do |total_freightage|
  expect(@order_page.total_freightage.text).to eql total_freightage
end

Then('the total order amount must be {string}') do |total_order|
  expect(@order_page.total_order.text).to eql total_order
end
