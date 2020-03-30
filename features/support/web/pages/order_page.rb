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
end
