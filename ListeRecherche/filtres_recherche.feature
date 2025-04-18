Feature: Utilisation des filtres dans la liste de recherche
  En tant qu'utilisateur,
  Je veux pouvoir utiliser des filtres dans la page de résultats de recherche,
  Afin d’affiner ma recherche et trouver plus facilement un produit.

  Background:
    Given L'utilisateur est sur la page des résultats de recherche

  Rule: Affinage des résultats via filtres

    Scenario: Application de filtres pour affiner la recherche
      When Il sélectionne un ou plusieurs filtres (par prix, marque, etc.)
      Then Les résultats doivent être mis à jour selon les critères sélectionnés
      But Les produits hors filtres ne doivent plus être visibles

    Scenario: Aucun résultat ne correspond aux filtres
      When L'utilisateur applique des filtres très restrictifs
      Then Un message "Aucun produit trouvé" doit être affiché

    Scenario: Sélection de filtres incompatibles
      When L'utilisateur sélectionne une combinaison de filtres qui ne peut donner aucun résultat
      Then Un message d'information s'affiche
      And La liste des produits est vide
    
    Scenario: Affichage visuel des filtres appliqués
      When L'utilisateur sélectionne plusieurs filtres
      Then Les cases à cocher correspondantes doivent rester cochées
      


