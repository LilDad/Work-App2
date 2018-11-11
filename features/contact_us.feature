Feature: Sending "Contact us" form

  @contact_us
  Scenario: User with valid credentials can send contact us form
    Given I go to Contact us form
    When I fill the Contact us form fields with information "test" and "e.bezhuratest@gmail.com"
    Then I send Contact us form