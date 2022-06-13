Feature: apitest

  Background:
    * def userID = '31yc7wrduvdb5cly6qbusrska5oq'
#    * url 'https://api.spotify.com/v1'
    * url baseUrl

  Scenario: Kullanıcı yeni bir çalma listesine şarkı ekler
    Given path '/me'
    And header Authorization = bearerToken
    When method Get
    Then status 200
    Given path '/users/' + userID + '/playlists'
    And header Authorization = bearerToken
    And request '{"name":"MentorlabsChallenge4"}'
    When method Post
    Then status 201
    # deneme




  Scenario: Get userID
    And path '/me'
    And header Authorization = bearerToken
    When method Get
    Then status 200
    Then assert responseTime < 4000


  Scenario: Bir Çalma Listesi Oluştur
    Given path '/users/' + userID + '/playlists'
    And header Authorization = bearerToken
    And request '{"name":"MentorlabsChallenge"}'
    When method Post
    Then status 200
