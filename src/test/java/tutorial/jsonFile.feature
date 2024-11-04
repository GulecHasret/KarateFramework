Feature: using post api with json file

  Background:
    * url 'https://gorest.co.in/'
    * def requestPayload = read('classpath:src/test/resources/payload/user.json')



  Scenario: Create a user within data
    Given path 'public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method POST
    Then status 201
    And match $.name == '#present'
    And match $.email == '#present'
    And match $.name == 'Hasret'
    And match $.email == 'ghm1123@gmail.com'
    And match $.name != null
    And match $.name != ''