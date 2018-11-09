Feature: Sending "Testimonials" form

  @testimonials
  Scenario: User with valid credentials can send "Testimonials" form
    Given I open a browser
    When I fill the fields with information "test" and "e.bezhuratest@gmail.com"
    Then I send fill form
    