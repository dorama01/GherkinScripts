Feature: Navigation vers une catégorie depuis la page d'accueil
  En tant qu'utilisateur,
  Je veux pouvoir accéder à une catégorie en cliquant dessus depuis la page d'accueil,
  Afin de naviguer facilement vers les produits qui m'intéressent.

  Background:
    Given L'utilisateur est sur la page d'accueil
    And Les catégories sont visibles

  Rule: Accès correct ou défaillant aux catégories

    Scenario: Accès à une catégorie via la homepage
      When Il clique sur une catégorie
      Then Il est redirigé vers la page correspondante
      And La liste des produits de cette catégorie est affichée

