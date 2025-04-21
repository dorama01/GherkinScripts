


Feature: Add product to cart from product list

  As a user,
  I want to add a product to my cart directly from the product listing page,
  So that I can shop efficiently without navigating to each product detail page.

  # Happy Path
  Scenario: Successfully add a product from the list to the cart
    Given I am on the product listing page
    And the product "<ProductName>" is displayed with an "Add to Cart" button
    When I click the "Add to Cart" button for "<ProductName>"
    Then "<ProductName>" should be added to my cart
    And the cart icon should update to reflect the quantity
    And I should be directed the recommandation product page based on the selected product
    And I should see a confirmation message like "Produit ajouté au panier"


  # Guest User
  Scenario: Guest user adds product to cart
    Given I am not logged in
    And "<ProductName>" is visible in the product list
    When I click "Add to Cart"
    Then "<ProductName>" should be added to a temporary cart session
    And I should see the same cart behavior as a logged-in user



