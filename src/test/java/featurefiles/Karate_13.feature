Feature: Karate Test Suite 13
  Data Driven Testing

  Scenario: Javascript function test case1
    * def fn1 = function(){return 123;}

    * def fn2 =
      """
      function(id){
      karate.log(id);
      }
      """
    * print fn1()
    * fn2(33)