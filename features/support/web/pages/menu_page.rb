class MenuPage
  include Capybara::DSL

  def box_cart
    find('#shopping-cart')
  end

  def amount_cart
    box_cart.find('tr', text: 'Total:').find('td')
  end

  def remove_item(item)
    find(:xpath, "//th[contains(.,'#{item}')]/..//i").click
  end

  def text_message_cart
    find('.snackbar').text
  end

  def add_item_cart(product)
    find('.menu-item-info-box', text: product.upcase).find('.add-to-cart').click
  end
end
