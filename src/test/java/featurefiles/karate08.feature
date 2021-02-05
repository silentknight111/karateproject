Feature: Karate Test Suite 7
  Validating with Regular Expression
  
  Scenario:Regular Expression Validation TestCase
    * def a = "10"
    * def b = "Karate"
    * def c = "Karate Framework Traning"
    * match a == "#regex [0-9]+"
    * match a == "#regex \\d+"
    * match b == "#regex \\w+"
    * match b == "#regex [A-Z][a-z]+"
    * match c == "#regex [A-Za-z\\s]+"
    * match c == "#regex (\\w+\\s?)+"