


Feature: Shopping Cart Access and Interactions from the Header

  As a user,
  I want to interact with the shopping cart icon in the header
  So that I can preview, update, or access the full cart contents

  Background:
    Given I am on a page where the header is visible

  Rule: Hovering over the cart icon shows a preview panel

    Scenario: Display "Panier vide" when cart is empty
      When I hover over the "Cart" icon
        And my cart is empty
      Then a preview panel should appear
      And it should display the message "Panier vide" with a logo of a shopping cart
      And no products should be shown

      Scenario : add Item to cart
                 when I add an item to my cart
                 Then the cart icon should update to show the number of items

    Scenario: Display product list when cart has items
      Given My cart contains one or more items
      When I hover over the "Cart" icon
      Then a preview panel should appear
      And a total price should be displayed
      And all items in the cart should be listed with image, name, quantity, and price
      And controls should be available to update quantity or remove items

    Scenario: Update item quantity from the cart panel
      Given My cart contains at least one item
      When I increase the quantity of an item from the panel
      Then the updated quantity should be reflected
      And the total price should adjust accordingly

    Scenario: Remove an item from the cart panel
      Given My cart contains multiple items
      When I click on the "Remove" icon of an item
      Then that item should disappear from the panel
      And the cart total should be updated

    Scenario: Empty cart after removing all items
      Given My cart contains several items
      When I remove all items from the preview panel
      Then the panel should display the message "Panier vide"

  Rule: Clicking the cart icon redirects to the cart page

    Scenario: Access the full cart page
      When I click on the "Cart" icon
      Then I should be redirected to the cart summary page
      And all current cart items should be displayed
      And I should be able to remove items or chane the quantity of each item 
      And I should see a "Choisir ma livraison" button


    Scenario: See recommended content based on the content of you shipping cart 
         Given I Acceded to the cart page
      When I scroll down the cart page
      Then I should see a section with recommended products
      And these products should be related to the items in my cart
      And I should be able to add them to my cart
      And I should see Also items inspired by my own visits
