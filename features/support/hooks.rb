require 'watir'

After do |scenario|
  if scenario.failed?
    screenshot = "Screenshots/FAILED_#{scenario.name.tr(' ', '_').gsub(/[^0-9A-Za-z_]/,'')}.png"
    @browser.driver.save_screenshot(screenshot)
    encoded_img=@browser.driver.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end
