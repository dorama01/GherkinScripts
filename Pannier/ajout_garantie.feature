Feature: Gestion de la garantie sur un produit du panier
  En tant qu'utilisateur,
  Je veux pouvoir ajouter une garantie à un produit dans mon panier,
  Afin de bénéficier d'une couverture supplémentaire pour mes achats.

  Background:
    Given Un produit éligible est présent dans le panier

  Rule: Ajout et visibilité de l’option de garantie

    Scenario: Ajout d'une garantie sur un produit
      When L'utilisateur sélectionne une garantie supplémentaire pour ce produit
      And Il valide l’ajout
      Then La garantie est ajoutée au produit
      And Le montant total du panier est mis à jour

