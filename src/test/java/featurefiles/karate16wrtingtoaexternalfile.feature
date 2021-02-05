Feature: Karate Test Suite 16
  Writing response to External File

  Scenario: writing to ext file
    * def util = Java.type('misc.utils')
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("result.json",res)

  Scenario: Read
    * def data = read("classpath:res.json")
    * print data




