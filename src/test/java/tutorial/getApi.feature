Feature: GET API FEATURE

  Scenario: get user details
    Given url baseUrl + 'public/v2/users'
    And path '7457869' //URL sonuna değer vermek için
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actName = jsonResponse.name
    * def actID = jsonResponse.id
    * def actEmail = jsonResponse.email
    * print actName + " " + actID + " " + actEmail
    * match actName == 'Gov. Sloka Bandopadhyay'
    * match actID == 7457869
    * match actEmail == 'bandopadhyay_gov_sloka@thompson.test'

  Scenario: get user details --user not found
    Given url 'https://gorest.co.in/public/v2/users'
    And path '1'
    When method GET
    Then status 404