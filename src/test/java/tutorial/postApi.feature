Feature: using post api

  Background:
    * url 'https://gorest.co.in/'
    * def requestPayload =
    """
    {
    "id": 7461928,
    "name": "Hasret",
    "email": "ghm1@gmail.com",
    "gender": "male",
    "status": "active"
    }

    """

  Scenario: Create a user within data
    Given path 'public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method POST
    Then status 201
    And match $.name == '#present'
    And match $.email == '#present'
    And match $.name == 'Hasret'