Feature: Affichage de la bannière promotionnelle sur la page d'accueil
  En tant qu'utilisateur,
  Je veux voir une bannière promotionnelle dès que j’arrive sur la page d’accueil,
  Afin d’être informé rapidement des offres en cours.

  Background:
    Given L'utilisateur est sur la page d'accueil

  Rule: Affichage de la bannière en fonction du chargement de la page

    Scenario: Affichage de la bannière promotionnelle
      When La page se charge complètement
      Then Une bannière promotionnelle s'affiche en haut de la page
      And Elle contient un lien ou un bouton vers une offre spéciale

 
