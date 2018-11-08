path = '/home/e-bezura/RubymineProjects/Automation/drivers/chromedriver'

# path = '/home/e-bezura/Documents/Automation/drivers/geckodriver'


Given(/^I open a browser$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path: path
  url = 'https://customessaywritingservices.com/testimonials/'
  @browser.navigate.to url


  # driver = Selenium::WebDriver.for :chrome, driver_path: path
  # driver.navigate.to 'http://www.articlerewriteservice.net/testimonials/'
  # driver.manage.timeouts.page_load = 1
  # driver.wait_for_page_to_load "300000"
end

# And(/^I wait for (\d+) seconds$/) do |n|
#   Capybara.default_wait_time = 5
# end

When(/^I fill the fields with information "([^"]*)" and "([^"]*)"$/) do |data, email|
  @browser.find_element(xpath: '//input[@type="radio" and @value="male"]').submit
  @browser.find_element(xpath: '//input[@id="inputName"]').send_keys data
  @browser.find_element(xpath: '//input[@id="inputEmail"]').send_keys email
  @browser.find_element(xpath: '//input[@id="inputPlace"]').send_keys data
  @browser.find_element(xpath: '//input[@id="orderId"]').send_keys data
  @browser.find_element(xpath: '//textarea[@id="inputMessage"]').send_keys data
  @browser.find_element(xpath: '//button[@class="disabled testimonial_btn"]').click
end

Then (/^I verify Contact us page loaded$/) do
  @browser.find_element(xpath: '//div[@class="sm-t-success"]')
end
