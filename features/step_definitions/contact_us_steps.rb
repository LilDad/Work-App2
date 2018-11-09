Given(/^I open a Contact us form$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto 'http://www.articlerewriteservice.net/contact-us/'
  @browser.wait_until_present(timeout: 300)
  end

When(/^I fill the "Contact us" fields with information "([^"]*)" and "([^"]*)"$/) do |data, email|
  @browser.text_field(id: 't_name').set data
  @browser.text_field(id: 't_email').set email
  @browser.text_field(id: 't_subj').set data
  @browser.textarea(id: 't_text').set data
  @browser.checkbox(id: 'contact_us_checkbox').click
  @browser.button(id: 'contact_us_btn').click!
end

Then(/^I send "Contact us" fill form$/) do
  @browser.div(id: 't_msg_ok')
end
