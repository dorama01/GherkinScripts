

Feature: Accessing the burger menu "Tout nos rayons"

  As a user
  I want to access the "Tout nos rayons" menu from the header
  So that I can browse available categories at any time
 
  Background:
    Given I am on any page of the website where the header is visible


  Rule: The "Tout nos rayons" menu should be accessible and responsive


    Scenario: Successfully open the burger menu from the header
       
      When I click on the "Tout nos rayons" button in the header
      Then the sidebar menu should appear
      And I should see a list of main categories displayed

    Scenario: Open the burger menu on a product subpage
      Given I navigate to a subpage like a product or category page
      When I click on the "Tout nos rayons" button in the header
      Then the sidebar menu should appear
      And I should see a list of main categories displayed

      Scenario: Open the burger menu and check the categories
      Given I have opened the "Tout nos rayons" menu
      When I have clicked on certain category 
      Then I should see subcategories related to the selected category or redirected directly to the selected category page
     

  Scenario: Close the burger menu by clicking the "X" button (positive path)
    Given I have opened the "Tout nos rayons" menu
    When I click on the "X" button to close the menu
    Then The sidebar menu should disappear from the screen
    And The previously displayed page should remain visible 

