Feature: search users

  Background:
    * url "https://reqres.in"+"/api/users/" + id
   # * path id = '/users'
    #* params {username: "#(user.name)", formatted: true, 2: #(id)}
@searchUserByID
  Scenario Outline: search saccessful by id <Test>
    When method GET
    Then status 200
    * def idUser = $.data.id
  * def dateEmail = $.data.email
  * print dateEmail

    Examples:
      | Test | id |
      | Veri | 3  |