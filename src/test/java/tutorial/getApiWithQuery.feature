Feature: Get API Request with Query

  Scenario: Get all active and male users
    * def query = {status:'active', gender:'male', id:'7457197'}
    Given url baseUrl+'public/v2/users'
    And params query //filtreleme için kullanılıyor
    When method GET
    Then status 200
    * print response

    Scenario: Get all active users and print count
      * def query = {status:'active'}
      Given url baseUrl+ 'public/v2/users'
      And params query
      When method GET
      Then status 200
      * print response
      * def jsonResponse = response
      * def responseCount = jsonResponse.length
      * print responseCount
      * match responseCount == 10