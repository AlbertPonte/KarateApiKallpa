@ignore
Feature: Practicando POS genera token

  Background:
    * url 'https://restful-booker.herokuapp.com/auth'

    Scenario: Generando token
      When request {"username" : "admin","password" : "password123"}
      * method POST
      Then status 200
      * def verToken = $.token
      * print verToken
