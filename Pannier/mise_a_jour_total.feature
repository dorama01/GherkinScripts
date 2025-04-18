Feature: Mise à jour automatique du total du panier
  En tant qu'utilisateur,
  Je veux que le total de mon panier soit recalculé automatiquement dès que je modifie les quantités,
  Afin de toujours connaître le montant exact à payer.

  Background:
    Given L'utilisateur est sur la page du panier

  Rule: Recalcul dynamique du total en fonction des quantités

    Scenario: Modification de la quantité d’un produit
      Given Le panier contient un produit avec une quantité de 1
      When L'utilisateur augmente la quantité à 2
      Then Le total doit être mis à jour avec le nouveau montant correspondant

    Scenario: Diminution de la quantité 
      Given Le panier contient un produit avec une quantité de 2
      When L'utilisateur réduit la quantité à 1
      Then Le total doit être recalculé en conséquence

    Scenario: Mauvais recalcul du total
      Given Le panier contient plusieurs produits
      When L'utilisateur change la quantité de l’un d’eux
      Then Le total ne reflète pas correctement la mise à jour
      But Il devrait être mis à jour dynamiquement
