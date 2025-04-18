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

    Scenario: Garantie non ajoutée
      When L'utilisateur sélectionne une garantie pour le produit
      And Il valide l’ajout
      Then Rien ne change dans le panier
      But La garantie aurait dû s’ajouter

    Scenario: L’option de garantie n’est pas proposée
      Given Le panier contient un produit éligible à une garantie
      Then L’option "Ajouter une garantie" ne s’affiche pas
      But Elle devrait apparaître pour ce produit
