Given(/^I go to Quote request form$/) do
  @browser = Watir::Browser.new :chrome
  @browser.goto 'http://www.articlerewriteservice.net/'
  Watir.default_timeout = 5
end

When(/^I fill the Quote request form fields with information "([^"]*)" and "([^"]*)"$/) do |data, email|
  @browser.text_field(id: 'firstname').set data
  @browser.text_field(id: 'email').set email
  @browser.text_field(id: 'topic').set data
  # array = %w[services type terminology urgency pages]
  # array.each do |arg|
  #   result = @browser.select_list(id: arg).wait_until_present.options.select(&:enabled?)
  #   result.sample.click
  # end

  services = @browser.select_list(id: 'services').wait_until_present.options.select(&:enabled?)
  services.sample.click
  types = @browser.select_list(id: 'type').wait_until_present.options.select(&:enabled?)
  types.sample.click
  terminology = @browser.select_list(id: 'terminology').wait_until_present.options.select(&:enabled?)
  terminology.sample.click
  urgency = @browser.select_list(id: 'urgency').wait_until_present.options.select(&:enabled?)
  urgency.sample.click
  pages = @browser.select_list(id: 'pages').wait_until_present.options.select(&:enabled?)
  pages.sample.click
  sleep(10)
end

Then(/^I send Quote request form$/) do
  pending
end
