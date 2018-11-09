Feature: Sending "Contact us" form

  @contact_us
  Scenario: User with valid credentials can send "Contact us" form
    Given I open a Contact us form
    When I fill the "Contact us" fields with information "test" and "e.bezhuratest@gmail.com"
    Then I send "Contact us" fill form