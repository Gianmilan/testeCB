require 'capybara'
require 'capybara/dsl'
require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

# Capybara.register_driver :site_prism do |app|
#     Capybara::Selenuim::Driver.new(app, browser: :chrome)
# end

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      url: 'http://zalenium2-mobile-viaunica-cb-stg.ocp-eqx.dc.nova/wd/hub'
      #desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(chrome_options)
    )
  end

  Capybara.configure do |config|
    config.default_driver = :site_prism
  end