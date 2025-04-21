Feature: Tri des résultats de recherche
  En tant qu'utilisateur,
  Je veux pouvoir trier les produits dans la liste des résultats
  Afin de mieux visualiser les offres selon mes préférences (prix, nouveauté…)

  Background:
    Given L'utilisateur est sur la page de résultats avec une liste de produits visibles

  Rule: Tri selon différents critères

    Scenario: Tri des produits par prix croissant
      When Il sélectionne l’option "Prix croissant"
      Then Les produits doivent être triés du moins cher au plus cher

    Scenario: Tri des produits par nouveauté
      When Il sélectionne "Nouveautés"
      Then Les produits doivent s’afficher dans l’ordre des nouveautés

  
