Feature: Sending "Quote request" form

  @quote_request
  Scenario: User with valid credentials can quote request us form
    Given I go to Quote request form
    When I fill the Quote request form fields with information "test" and "e.bezhuratest@gmail.com"
    Then I send Quote request form
