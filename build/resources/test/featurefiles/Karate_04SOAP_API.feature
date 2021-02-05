Feature: Karate Test Suite 4
  SOAP API Validation

  @soap
  Scenario: soap API testing
#  POST /xml/tempconvert.asmx HTTP/1.1
#  Host: www.w3schools.com
#  Content-Type: text/xml; charset=utf-8
#  Content-Length: length
#  SOAPAction: "https://www.w3schools.com/xml/CelsiusToFahrenheit"
#
#  <?xml version="1.0" encoding="utf-8"?>
#  <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
#  <soap:Body>
#  <CelsiusToFahrenheit xmlns="https://www.w3schools.com/xml/">
#  <Celsius>string</Celsius>
#  </CelsiusToFahrenheit>
#  </soap:Body>
#  </soap:Envelope>
#
#
#  https://www.w3schools.com/xml/tempconvert.asmx
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
      <?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <CelsiusToFahrenheit xmlns="https://www.w3schools.com/xml/">
      <Celsius>37</Celsius>
    </CelsiusToFahrenheit>
  </soap:Body>
</soap:Envelope>
    """
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    * print responseHeaders["Server"]
    * print responseHeaders["Server"][0]

    * match responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    * match responseHeaders["Server"][0] == "Microsoft-IIS/7.5"

    * print responseType
    * match responseType == "xml"
    * match response contains "98.6"
    * print response
    * match response //CelsiusToFahrenheitResult == 98.6

    * print responseTime
    * assert responseTime <= 2000
    * print responseStatus


    * print responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    * print responseHeaders["Server"][0] == "Microsoft-IIS/7.5"
