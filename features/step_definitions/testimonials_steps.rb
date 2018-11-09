require 'watir'
require 'cucumber'
require 'selenium-webdriver'
require 'watir-scroll'

Given(/^I open a browser$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto 'http://www.articlerewriteservice.net/testimonials/'
end

When(/^I fill the fields with information "([^"]*)" and "([^"]*)"$/) do |data, email|
  @browser.input(type: 'radio', value: 'male').click
  @browser.text_field(id: 'inputName').set data
  @browser.text_field(id: 'inputEmail').set email
  @browser.text_field(id: 'inputPlace').set data
  @browser.text_field(id: 'orderId').set data
  @browser.textarea(id: 'inputMessage').set data
  @browser.scroll.to([0, 300])
  @browser.checkbox(id: 'testimonials_checkbox').set
  @browser.button(class: 'testimonial_btn').click
end

Then (/^I send fill form$/) do
  @browser.div(class: 'sm-t-success')
end
