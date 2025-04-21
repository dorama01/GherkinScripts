



Feature: Redirection to home page via logo click

  As a user
  I want to be able to click on the Cdiscount logo
  So that I am redirected to the homepage

  Background:
   Given I am on the landing page
   And I am <authenticationStatus>

   Examples:
  | authenticationStatus      |
  | a visitor                  |
  | logged in as a regular user |

  Rule: Clicking on the logo should always take the user to the homepage



   Scenario: The header contains the logo on every main page
        
        Given I am navigating through the site
        Then I should always see the Cdiscount logo in the header


    Scenario: User clicks on the Cdiscount logo (positive path)
      When I click on the Cdiscount logo
      Then I should be redirected to the homepage
      And the homepage URL should be "https://www.cdiscount.com"
      And I should see the main banner or homepage content

  