Feature: Headers Parameter

  Scenario: pass the user request with headers v1
    Given header Content-Type = 'text/xml;charset=ISO-8859-1'
    And header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'Keep-Alive'
    And header Expect = '100-continue'


    When url baseUrl + 'public/v2/users'
    And path '7457869' //URL sonuna değer vermek için
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers v2
    * def request_header = {Content-Type : 'text/xml;charset=ISO-8859-1', Accept-Encoding : 'gzip,deflate', Connection : 'Keep-Alive', Expect : '100-continue'}
    Given headers request_header
    When url baseUrl + 'public/v2/users'
    And path '7457869' //URL sonuna değer vermek için
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers v3
    * configure headers = {Content-Type : 'text/xml;charset=ISO-8859-1', Accept-Encoding : 'gzip,deflate', Connection : 'Keep-Alive', Expect : '100-continue'}
    When url baseUrl + 'public/v2/users'
    And path '7457869' //URL sonuna değer vermek için
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers v4
    * configure headers = headerConfig
    When url baseUrl + 'public/v2/users'
    And path '7457869' //URL sonuna değer vermek için
    When method GET
    Then status 200
    * print response
