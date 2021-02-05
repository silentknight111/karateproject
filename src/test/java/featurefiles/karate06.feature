Feature: Karate Test Suite 6
  Using Logical operator && in validation
  
  Scenario: Karate logical operator Validation
    * def a = 10
    * def b = 20
    * assert a == 10 && b == 20
#    * print a == 10 && b == 201
    * print "after assert"