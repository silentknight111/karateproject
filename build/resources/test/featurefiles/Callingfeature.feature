Feature: Calling Feature Suite
  Calling Feature

  @rest
  Scenario: CallingFeature Test Case
    * def result = call read("Calledfeature.feature")
    * print result
    * assert result.response.string._ == "98.6"

