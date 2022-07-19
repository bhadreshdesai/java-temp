Feature: sample karate test script to test start wars api
  for api details see https://swapi.dev/

  Background:
    * url 'https://swapi.dev/api'

  Scenario: get all people from star wars
    Given path '/people'
    When method get
    Then status 200
    And match response.count == 82

 Scenario: get Luke Skywalker
    Given path '/people/1'
    When method get
    Then status 200
    And match response.name == "Luke Skywalker"

 Scenario: get C-3PO
    Given path 'people', 2
    When method get
    Then status 200
    And match response.name == "C-3PO"


