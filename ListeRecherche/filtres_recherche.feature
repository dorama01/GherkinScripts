Feature: Utilisation des filtres dans la liste de recherche
  En tant qu'utilisateur,
  Je veux pouvoir utiliser des filtres dans la page de résultats de recherche,
  Afin d’affiner ma recherche et trouver plus facilement un produit.

  Background:
    Given L'utilisateur est sur la page des résultats de recherche

  Rule: Affinage des résultats via filtres

    Scenario: Application de filtres pour affiner la recherche
      When Il sélectionne les filtres "Prix : 200€ à 500€" et "Marque : Lenovo etc."
      Then seuls les produits Lenovo entre 200€ et 500€ doivent être affichés
      But Les produits hors filtres ne doivent plus être visibles
 
    Scenario: Affichage visuel des filtres appliqués
      When L'utilisateur sélectionne plusieurs filtres
      Then Les cases à cocher correspondantes doivent rester cochées
      


