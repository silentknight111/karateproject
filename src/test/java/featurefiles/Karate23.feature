Feature: Karate Test Suit 23
  Reading Global Variable from Karate Config

  Scenario: Karate Config TestCase
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response