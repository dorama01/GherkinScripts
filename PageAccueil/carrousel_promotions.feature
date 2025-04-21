Feature: Fonctionnement du carrousel de promotions
  En tant qu'utilisateur,
  Je veux interagir avec le carrousel promotionnel en homepage,
  Afin de consulter facilement les différentes offres proposées.

  Background:
    Given L'utilisateur est sur la page d'accueil

  Rule: Navigation et interactivité du carrousel

    Scenario: Carrousel promotionnel fonctionnel
      Given Le carrousel est visible en homepage
      When L'utilisateur clique sur les flèches de navigation
      Then Les promotions défilent correctement
      And L'utilisateur peut accéder à chaque offre affichée
