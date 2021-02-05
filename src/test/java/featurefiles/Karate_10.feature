Feature: Karate Test Suite 10
  Validating JSON output of REST API with GET metod

  @rest
  Scenario: REST API TestCase 1
    Given url "https://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name =="Tiger Nixon"
    * match response.status == "#string"

  @rest
  Scenario: REST API TestCase 2
    Given url "https://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name =="Tiger Nixon"
    * match response.status == "#string"