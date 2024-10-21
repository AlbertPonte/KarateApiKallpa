Feature: Create users with method POST

  Background:
    * url 'https://reqres.in/api/users'
    * def bodyRequest = read("body-Request.json")
    * def saccessfulResponseTypeDate = read("saccessful-response-type-date.json")
   # * def saccessfulResponseCreateUser = read("Saccessful-response-create-users.json")
  @createUsers
  Scenario Outline: Creating users and verifying type of date <Name Test>
    When request bodyRequest
    And method POST
    Then status 201
    * def idResponse = $.id
    * print idResponse
   # * match $ == saccessfulResponseTypeDate

    Examples:
      | Name Test                    | name     | work     |
      | Verificar los tipos de datos | Albertt  | Analista |
      | Verificar usuario creado     | Einstenn | Karate   |