Feature: Create random string to use post method

  Background:
    * url 'https://gorest.co.in/'
    * def randomStringManually =
    """
      function(s){
        var text='';
        var pattern="ABCDEFGHJKLMNOPRSTYZabcdefghjklmnoprstyz";
        for(var i =0;i<s;i++)
        {
        text+= pattern.charAt(Math.floor(Math.random()*pattern.length()));



        }
        return text;
      }

    """
    * def randomStringText = randomStringManually(10)
    * print randomStringText
    #* def randomString = 'user_' + karate.randomString(5) + '@gmail.com'
    * def requestPayload =
    """
    {
    "id": 7461928,
    "name": "Hasret",
    "gender": "male",
    "status": "active"
    }

    """
    * requestPayload.email= randomStringText +"@gmail.com"
    * print requestPayload
  Scenario: Create a user within data
    Given path 'public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method POST
    Then status 201
    And match $.name == '#present'
    And match $.email == '#present'
    And match $.name == 'Hasret'