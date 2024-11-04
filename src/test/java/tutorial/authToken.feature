Feature: GET API FEATURE

  Scenario: get user details
    * print tokenID
    Given header Authorization = 'Bearer ' + tokenID
    Given url baseUrl + 'public/v2/users'
    And path '7457869' //URL sonuna değer vermek için
    When method GET
    Then status 200
    * print response