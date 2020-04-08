Given('dado que eu acesso {string}') do |url|
  visit url
end

When('eu informar os dados da viagem {string} e {string}') do |initial_date, final_date|
  @passagens_page.escolher_data(initial_date, final_date)
end
