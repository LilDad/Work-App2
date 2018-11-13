Feature: Sending "Quote request" form

  Scenario: User with valid credentials can quote request us form
    Given I go to Quote request form
    When I fill the Quote request form fields with information "test" and "e.bezhuratest@gmail.com"
    Then I should see paper options:
    | subtype            |
    | Proposal           |
    | Abstract           |
#    | 4       |
#    | 5       |
#    | 6       |
#    | 7       |
#    | 8       |
