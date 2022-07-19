Feature: sample karate test script to test pokeapi
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://pokeapi.co/api/v2'

  Scenario: get all berries and then get the first berry by id
    Given path '/berry'
    When method get
    Then status 200
    And match response.count == 64
