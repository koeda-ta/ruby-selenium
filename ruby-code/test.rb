# filename: grid.rb

require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

def setup
  @driver = Selenium::WebDriver.for(
    :remote,
    url: 'http://10.8.90.248:4444/wd/hub',
    desired_capabilities: :chrome) # you can also use :chrome, :safari, etc.
end

def teardown
  @driver.quit
end

def run
  setup
  yield
end

run do
  @driver.get 'https://google.com'
  expect(@driver.title).to eq('The Internet')
end

