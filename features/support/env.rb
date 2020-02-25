require 'awesome_print'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

# Rspec.configure do |config|
#   config.before(:example) do
#     page.current_window.resize_to(1280, 800)
#   end

#   config.after(:example) do |e|
#     scenario = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_').downcase!
#     page.save_screenshot('log/' + scenario + '.png') if e.exception
#   end
# end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://localhost:3000'
  config.default_max_wait_time = 5
end
