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

  def list_all_products
    all('.menu-item-info-box')
  end

  def restaurant_details
    find('#detail')
  end

  def clean_cart
    click_button('Limpar')
  end

  def finalize_order
    click_link('Fechar Pedido')
  end
end
