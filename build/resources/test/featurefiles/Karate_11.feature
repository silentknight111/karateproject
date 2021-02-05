Feature: Karate Test Suite 11
  End to End API Testing (API Chaining)

  @rest
  Scenario: REST API TestCase 2
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Shubh","salary":"0","age":"23"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
    * print response
   # * assert response.message == "Successfully! Record has been fetched."

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"Shubh","salary":"10","age":"23"}
    When method put
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method delete
    Then status 200
    * print response
    * assert response.message = "successfully! deleted Records"


