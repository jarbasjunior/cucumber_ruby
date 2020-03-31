class OrderPage
  include Capybara::DSL

  def total_items
    find(:xpath, "//th[text()='Itens:']//../td")
  end 

  def total_freightage
    find(:xpath, "//th[text()='Frete:']//../td")
  end 

  def total_order
    find(:xpath, "//th[text()='Total:']//../td")
  end

  def fill_user_delivery(data)
    find('input[formcontrolname=name]').set data[:name]
    find('input[formcontrolname=email]').set data[:email]
    find('input[formcontrolname=emailConfirmation]').set data[:email]
    find('input[formcontrolname=address]').set data[:street]
    find('input[formcontrolname=number]').set data[:number]
    find('input[formcontrolname=optionalAddress]').set data[:complement]
  end

  def select_payment_method(payment_method)
    find(:xpath, "//div[contains(.,'#{payment_method}')]/label/div").click
  end

  def finalize_order(payment_method)
    self.select_payment_method(payment_method)
    click_button('Finalizar Pedido')
  end
end
