Feature: delete cat by id and verify

  Scenario:
    Given url karate.properties['mock.cats.url']
    And path id
    When method delete
    Then status 200
    And match response == ''

    Given path id
    When method get
    Then status 404
