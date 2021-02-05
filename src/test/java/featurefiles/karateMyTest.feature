Feature: Karate Test Suite 5
  SOAP API Validation

  @soap
  Scenario: soap API trial

    Given url "http://www.dneonline.com/calculator.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
     <?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <Add xmlns="http://tempuri.org/">
      <intA>5</intA>
      <intB>4</intB>
    </Add>
  </soap:Body>
</soap:Envelope>
    """
    When soap action "http://tempuri.org/Add"
    Then status 200

    * print responseHeaders["Server"]
    * print responseHeaders["Server"][0] == "Microsoft-IIS/8.0"
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response


