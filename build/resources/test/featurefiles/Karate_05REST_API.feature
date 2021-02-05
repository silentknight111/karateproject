Feature: Karate Test Suite 6
  REST API Validation

  @rest
  Scenario: REST API testing
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=37"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response
    * match responseType == "xml"
    * assert responseTime <= 2000
    * match response contains "98.6"

