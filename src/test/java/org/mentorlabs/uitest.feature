Feature: uitest
  Background:
    Given driver "https://open.spotify.com"
    And driver.fullscreen()

  Scenario: Spotify arayüz test senaryosu
    Given click("button[data-testid='login-button']")
    Then waitFor('#login-username')
    And input('#login-username','arda.torcuk@testinium.com')
    And input('#login-password','Marla1212')
    And click('#login-button')
    Then waitFor("button[data-testid='create-playlist-button']")
    And delay(3000)
    And click("button[data-testid='create-playlist-button']")
    And delay(5000)
    Then waitFor("section[data-testid='playlist-page'] button[aria-label*='Edit details']")
    And click("section[data-testid='playlist-page'] button[aria-label*='Edit details']")
    Then delay(10000)


