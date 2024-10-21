Feature: Register users to the system

  Background:
   # * call read("../Get/singerUserGet.feature@searchUserByID")
    * url 'https://reqres.in/api/register'
    * def bodyRegisterUsers = read("body-request-register-users.json")

  Scenario Outline: Register user <testDescription>
    When request bodyRegisterUsers
    #* print dateEmail
    * method POST
    Then status 200
    * def idCreateResponse = $.id

    Examples:
      | testDescription        | email               | password    |
      | register user engineer | emma.wong@reqres.in | karate@2024 |

