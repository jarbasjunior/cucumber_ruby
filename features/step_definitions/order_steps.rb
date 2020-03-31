Given('that I finalized my order with the following products') do |table|
  @product_list = table.hashes
  @product_list.each do |p|
    p[:quantity].to_i.times do
      @menu_page.add_item_cart(p[:name])
      expect(@menu_page.text_message_cart).to eql "Você adicionou o item #{p[:name]}"
    end
  end
  @menu_page.finalize_order
end

Given("I informed my delivery details") do |table|
  delivery_details = table.rows_hash
  @order_page.fill_user_delivery(delivery_details)
end

When("I finalize my order with {string}") do |payment_method|
  @order_page.finalize_order(payment_method)
end

Then("must be see the following message") do |message|
  expect(page).to have_text message
end
