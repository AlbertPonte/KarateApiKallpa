Feature: Update users of system

  Background:
    * url 'https://reqres.in/api/users/2'
    * def bodyUpdate = read("body-update.json")

  Scenario Outline: Update users <descriptionTest>
    When request bodyUpdate
    * method Put
    Then status 200

    Examples:
      | descriptionTest | name   | job         |
      | # 1             | Albert | Engineer QA |


