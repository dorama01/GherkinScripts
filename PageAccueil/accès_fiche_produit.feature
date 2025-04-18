Feature: Accès à la fiche produit depuis la page d'accueil
  En tant qu'utilisateur,
  Je veux pouvoir consulter la fiche produit depuis la page d'accueil,
  Afin d'accéder aux détails du produit facilement.

  Background:
    Given L'utilisateur est sur la page d'accueil

  Scenario: Consultation d’un produit depuis la homepage
    Given un produit est affiché sur la page
    When L'utilisateur clique sur ce produit
    Then Il est redirigé vers la fiche produit
    And Les détails du produit sont affichés (titre, image, prix)

  Scenario: Fiche produit vide après clic
    Given un produit est affiché sur la page
    When L'utilisateur clique sur ce produit
    Then Il est redirigé vers une fiche produit
    But Les informations sont absentes ou incorrectes

  Scenario: Le lien de la catégorie est inactif 
    Given Une catégorie est visible mais non cliquable
    When L'utilisateur clique sur le lien
    Then Le lien ne réagit pas
    But L'utilisateur devrait pouvoir naviguer vers cette catégorie
