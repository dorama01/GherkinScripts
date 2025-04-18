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

    Scenario: Accès à une fiche produit depuis les résultats alors que le produit a été supprimé
      When L'utilisateur clique sur un produit qui a été supprimé
      Then Un message d'erreur s'affiche indiquant que le produit n'est plus disponible

    Scenario: Le produit affiché mène à une fiche incorrecte
      When Il clique sur un produit
      Then Il est redirigé vers une fiche produit
      But Les informations ne correspondent pas à celles affichées dans la liste

