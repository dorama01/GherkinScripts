Feature: Mise à jour automatique du total du panier
  En tant qu'utilisateur,
  Je veux que le total de mon panier soit recalculé automatiquement dès que je modifie les quantités,
  Afin de toujours connaître le montant exact à payer.

  Background:
    Given L'utilisateur est sur la page du panier

  Rule: Recalcul dynamique du total en fonction des quantités

    Scenario: Modification de la quantité d’un produit
      Given Le panier contient un produit avec une quantité de 1
      When L'utilisateur modifie la quantité à 2
      Then Le total doit être mis à jour avec le nouveau montant correspondant

 
   