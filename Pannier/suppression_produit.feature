Feature: Suppression d’un produit du panier
  En tant qu'utilisateur,
  Je veux pouvoir supprimer un produit de mon panier,
  Afin de retirer les articles que je ne souhaite plus acheter.

  Background:
    Given L'utilisateur est sur la page du panier
    And Le panier contient au moins un produit

  Rule: Suppression d'un produit et cohérence du total

    Scenario: Suppression réussie d’un produit
      When L'utilisateur clique sur le bouton "Supprimer" pour un produit
      Then Le produit doit disparaître du panier
      And Le total doit être mis à jour automatiquement

    Scenario: Le bouton "Supprimer" ne fonctionne pas
      When L'utilisateur clique sur le bouton "Supprimer" pour un produit
      Then Le produit reste affiché dans le panier
      But Il devrait être retiré

    Scenario: Annulation d’une suppression
      Given Le panier contient un produit
      When L'utilisateur clique sur "Supprimer"
      And Il clique sur "Annuler" dans la confirmation
      Then Le produit doit rester dans le panier

