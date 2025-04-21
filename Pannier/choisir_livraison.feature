Feature: Accès à l’authentification depuis l’option "Choisir ma livraison"
  En tant qu'utilisateur,
  Je veux pouvoir passer à l’étape de livraison depuis mon panier,
  Afin de finaliser mon achat après m'être authentifié.

  Background:
    Given L'utilisateur est sur la page du panier

  Rule: Redirection via le bouton "Choisir ma Livraison"

    Scenario: Redirection vers la page d’authentification
      When Il clique sur le bouton "Choisir ma Livraison"
      Then Il est redirigé vers la page d’authentification
      And Il doit s’identifier pour continuer



