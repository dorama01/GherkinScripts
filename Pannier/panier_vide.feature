Feature: Affichage d’un message lorsque le panier est vide
  En tant qu'utilisateur,
  Je veux voir un message clair lorsque mon panier ne contient aucun article,
  Afin de savoir que je n'ai encore rien ajouté.

  Background:
    Given L'utilisateur est sur la page du panier

  Rule: Message et état du panier vide

    Scenario: Panier vide au premier accès
      Given Aucun produit n’a été ajouté
      Then Un message "Votre panier est vide" s'affiche
      And Aucun produit n’est listé

    Scenario: Message manquant pour panier vide
      Given Aucun produit n’a été ajouté
      When L'utilisateur ouvre son panier
      Then Aucun produit n’est affiché
      But Le message "Votre panier est vide" n’apparaît pas

    Scenario: Suppression de tous les produits
      Given Le panier contient des produits
      When L'utilisateur supprime tous les articles
      Then Le message "Votre panier est vide" doit s'afficher

    Scenario: Panier vidé après déconnexion
      Given Le panier contient des produits
      When L'utilisateur se déconnecte puis se reconnecte
      Then Un message "Votre panier est vide" s'affiche
      And Aucun produit n’est listé

