class NavbarPage
  include Capybara::DSL

  def go_to(page)
    click_link(page)
  end
end
