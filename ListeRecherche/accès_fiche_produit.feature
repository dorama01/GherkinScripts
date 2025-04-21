Feature: Accès à la fiche produit depuis la liste des résultats de recherche
  En tant qu'utilisateur,
  Je veux pouvoir accéder à la fiche détaillée d'un produit depuis les résultats de recherche,
  Afin de consulter ses informations complètes et effectuer un achat en toute confiance.

  Background:
    Given L'utilisateur a effectué une recherche
    And Une liste de résultats est affichée

  Rule: Redirection correcte et cohérence des données produit

    Scenario: Redirection vers la fiche produit depuis les résultats
      When Il clique sur un produit dans la liste
      Then Il doit être redirigé vers la fiche détaillée du produit
      And Les informations affichées (image, prix, titre) doivent correspondre à celles de la liste

 

