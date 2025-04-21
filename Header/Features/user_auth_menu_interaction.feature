

Feature: Accessing authentication options from the header

  Rule: Users should be able to access authentication features through both hover and click interactions on the "Connectez-vous" area

  Background:
    Given I am a visitor on the homepage
    And I can see the header with the "Connectez-vous" button

 

  Scenario: Hover over "Connectez-vous" to display authentication panel
    When I hover over the "Connectez-vous" button
    Then a panel titled "Connectez-vous" should appear
    And I should see the "Identifiez-vous" button
    And I should see a list of account-related links

 Scenario: redirect to the login page
    When I click on the "Connectez-vous" button
    Then I should be redirected to the login page
    And I should see the login form
    And I shoud be able to login using goodle account or if already registered to log in by email 
    And I should see a "Continuer" button

  Scenario: redirect to the login page from the hover panel
    Given I have hovered over the "Connectez-vous" button
    When I click on the "Identifiez-vous" button in the panel
    Then I should be redirected to the login page
     And I should see the login form with the cdiscount logo
    And I should be able to login using goodle account or if already registered to log in by email 
    And I should see a "Continuer" button


  
  # Edge cases
  Scenario: Toggle panel visibility with hover off
    Given I have hovered and then moved the cursor away from the "Connectez-vous" area
    Then the authentication panel should no longer be visible


