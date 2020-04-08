class PassagensAereasPage
  include Capybara::DSL

  def escolher_data(initial_date, final_date)
    # abre o calendário
    find('#lblDepartureDate').click

    self.setar_data(initial_date)
    self.setar_data(final_date)
  end

  def setar_data(date)
    current_left_calendar = "(//div[@class='calendar-month ng-scope'])[1]"

    # captura o mês que está sendo exibido no calendário da esquerda
    id_month = find(:xpath, "#{current_left_calendar}/div[1]")[:id]
    current_month = Date.parse("1-#{id_month}").month

    # clica em avançar até encontrar o mês escolhido da data inicial
    while Date.parse(date).month > current_month
      find(:xpath, "//div[@class='calendar-content-arrow']/a[2]").click
      id_month = find(:xpath, "(//div[@class='calendar-month ng-scope'])[1]/div[1]")[:id]
      current_month = Date.parse("1-#{id_month}").month
    end

    dia = Date.parse(date).day
    find(:xpath, "#{current_left_calendar}//div[@class='calendar-days']/di[text()=#{dia}]").click

  end
end
