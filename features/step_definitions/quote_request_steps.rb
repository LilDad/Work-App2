Given(/^I go to Quote request form$/) do
  visit QuotePage
end

When(/^I fill the Quote request form fields with information "([^"]*)" and "([^"]*)"$/) do |_data, _email|
  # @browser.text_field(id: 'firstname').set data
  # @browser.text_field(id: 'email').set email
  # @browser.text_field(id: 'topic_paper').set data
  # array = %w[services type terminology urgency pages]
  # array.each do |arg|
  #   result = @browser.select_list(id: arg).wait_until_present.options.select(&:enabled?)
  #   result.sample.click
  # end

  # paper = @browser.select_list(id: 'paper').wait_until_present.options
  # paper.sample.click
  # types = @browser.select_list(id: 'type').wait_until_present.options.select(&:enabled?)
  # types.sample.click
  # terminology = @browser.select_list(id: 'terminology').wait_until_present.options.select(&:enabled?)
  # terminology.sample.click
  # urgency = @browser.select_list(id: 'urgency').wait_until_present.options.select(&:enabled?)
  # urgency.sample.click
  # pages = @browser.select_list(id: 'pages').wait_until_present.options.select(&:enabled?)
  # pages.sample.click
  sleep(5)
end

Then(/^I should see paper options:$/) do |table|
  # table is a table.hashes.keys # => [:subtype]
  table.hashes .each do |hsh|
    on(QuotePage).subtype_options.should include hsh['subtype']
  end
end
