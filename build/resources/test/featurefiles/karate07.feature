Feature: Karate Test Suite 7
  Variable Data Type Validation
  
  Scenario: Data Type Validation TestCase
    * def a = 20
    * def b = "Karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"