Feature: Ajouter un produit au panier depuis la liste de recherche
  En tant qu'utilisateur,
  Je veux pouvoir ajouter un produit au panier directement depuis les résultats de recherche,
  Afin de gagner du temps et simplifier mon parcours d’achat.

  Background:
    Given L'utilisateur est sur la page des résultats de recherche

  Rule: Fonctionnement du bouton "Ajouter au panier"

    Scenario: Ajout d’un produit au panier avec succès
      When Il clique sur "Ajouter" pour un produit
      Then Le produit doit être ajouté au panier
      And Une confirmation s’affiche

    Scenario: Ajouter plusieurs fois le même produit au panier depuis la liste de recherche
      Given Un produit a déjà été ajouté au panier
      When L'utilisateur clique à nouveau sur "Ajouter au panier" pour ce même produit
      Then La quantité de ce produit dans le panier doit être augmentée de 1
      And Une confirmation visuelle doit indiquer la mise à jour de la quantité

    #Scenario: Produit en rupture de stock
    #  When L'utilisateur clique sur "Ajouter au panier" pour un produit en rupture
    # Then Un message d'erreur s'affiche indiquant l'indisponibilité du produit

