Feature: Amazon Search functionality

Scenario: User can sear for a specific item on Amazon
  Given a user goes to Amazon
  When the search for "pens"
  Then Amazon should return result for "pens"