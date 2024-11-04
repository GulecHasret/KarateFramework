Feature: Grocery API

  Background: The Request Body Configuration
      # Set a configuration for the payload
    * url baseUrl

  Scenario: Get All Products from Grocery
    Given header Content-Type = 'application/json'
    And path '/pet/2'
    When method get
    Then status 200

    Scenario: Create and retrieve a cat

      Given url 'https://myhost.com/v1/cats'
      And request {name : 'Billie'}
      When method post
      Then status 201
      And match response == { id : '#notnull', name : 'Billie'}

      Given path response.id
      When method get
      Then status 200
