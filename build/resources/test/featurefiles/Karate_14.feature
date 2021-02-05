Feature: Karate Test Suite 13
  Calling Java (static and non static method)

  Scenario: Non static variable TC

    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misc.utils')
      var utils = new temp();
      return utils.method2();
      }
      """
    * print env1()

    * def res = call env1
    * print res

  Scenario: Static variable TC

    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misc.utils')
      return temp.method1();
      }
      """
    * print env1()

    * def res = call env1
    * print res