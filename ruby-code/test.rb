# filename: grid.rb

require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

def setup
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  caps[:platform] = :linux # you can also use :any, :win, or :x

  @driver = Selenium::WebDriver.for(
    :remote,
    url: 'http://172.20.0.2:4444/wd/hub',
    desired_capabilities: :chrome) # you can also use :chrome, :safari, etc.
end

def teardown
  @driver.quit
end

def run
  setup
  yield
  teardown
end

run do
  @driver.get 'https://google.com'
  expect(@driver.title).to eq('The Internet')
end
