require 'watir'
require 'cucumber'
require 'selenium-webdriver'

Given(/^a user goes to Amazon$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto 'http://www.amazon.com'
end

When(/^the search for "([^"]*)"$/) do |arg|
  @browser.text_field(id: 'twotabsearchtextbox').set arg
  @browser.send_keys :return
end

Then(/^Amazon should return result for "([^"]*)"$/) do |_arg|
  @browser.div(id: 'result_2').wait_until_present
  # page_output = @browser.div(id: 'resultCol').text.include? arg
  # assertion
  # (page_output, true)
  @browser.close
end
