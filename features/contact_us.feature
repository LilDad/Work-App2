Feature: Sending "Contact us" form

  @contact_us
  Scenario: User with valid credentials can login
    Given I open a browser
#    And I wait for 300000 seconds
    When I fill the fields with information "test" and "e.bezhuratest@gmail.com"
    Then I verify Contact us page loaded
    