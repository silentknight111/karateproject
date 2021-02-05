Feature: Karate Test Suit 24
  Using Scenario and feature level text fixture (karate hooks)


  Background: Init
    * print "from background block"
    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario")
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """


  Scenario: Karate hooks test case 1 TestCase
    * print "from scenario block"