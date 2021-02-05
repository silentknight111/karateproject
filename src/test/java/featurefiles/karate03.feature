Feature: Karate Test Suite 2
  Validating XML content
  
  Scenario: JSON Test Case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name

  Scenario: XML Test Case 2
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: XML Test Case 3
    Given def xml =
    """
  <info>
   <id>101</id>
   <tool>
    <name>Karate</name>
    <version>0.9.6</version>
   </tool>
  </info>

    """
    * print xml
    * print xml/info/id
    * print xml.info.id
    * print xml.info.tool.name



  Scenario: XML Test Case 4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml/info/id == "101"
    * match xml.info.tool.name == "Karate"

  Scenario: XML Test Case 4
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "Karate"

  Scenario: XML Test Case 5
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml contains "<version>0.9.6</version>"

  Scenario: XML Test Case 6
    Given def xml =
  """
    <info>
  <tool>
      <name>Karate</name>
      <version>0.9.6</version>
  </tool>
  <tool>
      <name>IntelliJ</name>
      <version>2020.2</version>
  </tool>
</info>
  """
    * match eval(xml.info.tool[1].name == "Karate") && eval(match xml.info.tool[2].name == "Karate")

