Given('dado que eui acesso {string}') do |url|
  visit url
end

When('eu informar os dados da viagem') do
  current_left_calendar = "(//div[@class='calendar-month ng-scope'])[1]"
  initial_date = '15/07/2020'
  final_date = '15/12/2020'

  # abre o calendário
  find('#lblDepartureDate').click

  # captura o mês que está sendo exibido no calendário da esquerda
  id_month = find(:xpath, "#{current_left_calendar}/div[1]")[:id]
  current_month = Date.parse("1-#{id_month}").month

  # clica em avançar até encontrar o mês escolhido da data inicial
  while Date.parse(initial_date).month > current_month
    find(:xpath, "//div[@class='calendar-content-arrow']/a[2]").click
    id_month = find(:xpath, "(//div[@class='calendar-month ng-scope'])[1]/div[1]")[:id]
    current_month = Date.parse("1-#{id_month}").month
  end

  # escolhe e dia da data inicial
  initial_day = Date.parse(initial_date).day
  find(:xpath, "#{current_left_calendar}//div[@class='calendar-days']/div[text()=#{initial_day}]").click

  # clica em avançar até encontrar o mês escolhido da data final
  while Date.parse(final_date).month > current_month
    find(:xpath, "//div[@class='calendar-content-arrow']/a[2]").click
    id_month = find(:xpath, "(//div[@class='calendar-month ng-scope'])[1]/div[1]")[:id]
    current_month = Date.parse("1-#{id_month}").month
  end

  # escolhe e dia da data final
  final_day = Date.parse(final_date).day
  find(:xpath, "#{current_left_calendar}//div[@class='calendar-days']/div[text()=#{final_day}]").click

end
