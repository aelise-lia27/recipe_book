
import '../model/recipe.dart';

class RecipeRepository {
  static const String fallbackImageUrl =
      'https://placehold.co/600x400/png?text=Recette';

  final List<Recipe> _recipes = [
    const Recipe(
      id: 'recette-001',
      name: 'Salade fraîche',
      description: 'Une salade légère aux légumes frais.',
      category: 'Entrées',
      ingredients: ['Tomates', 'Concombre', 'Oignon', 'Sel'],
      instructions: [
        'Laver les légumes.',
        'Couper les légumes en morceaux.',
        'Mélanger et assaisonner.',
      ],
      preparationTime: 15,
      servings: 2,
      imageUrl:
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600',
    ),
    const Recipe(
      id: 'recette-002',
      name: 'Omelette aux légumes',
      description: 'Une omelette simple et savoureuse.',
      category: 'Entrées',
      ingredients: ['Œufs', 'Tomates', 'Oignon', 'Sel'],
      instructions: [
        'Battre les œufs.',
        'Ajouter les légumes coupés.',
        'Cuire dans une poêle.',
      ],
      preparationTime: 10,
      servings: 2,
      imageUrl:
          'https://images.unsplash.com/photo-1525351484163-7529414344d8?w=600',
    ),
    const Recipe(
      id: 'recette-003',
      name: 'Riz au poulet',
      description: 'Un plat complet à partager.',
      category: 'Plats principaux',
      ingredients: ['Riz', 'Poulet', 'Tomates', 'Oignon', 'Épices'],
      instructions: [
        'Assaisonner et cuire le poulet.',
        'Préparer la sauce.',
        'Cuire le riz et servir avec le poulet.',
      ],
      preparationTime: 45,
      servings: 4,
      imageUrl:
          'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=600',
    ),
    const Recipe(
      id: 'recette-004',
      name: 'Pâtes à la tomate',
      description: 'Des pâtes accompagnées d’une sauce maison.',
      category: 'Plats principaux',
      ingredients: ['Pâtes', 'Tomates', 'Ail', 'Huile', 'Sel'],
      instructions: [
        'Faire cuire les pâtes.',
        'Préparer la sauce tomate.',
        'Mélanger les pâtes avec la sauce.',
      ],
      preparationTime: 25,
      servings: 3,
      imageUrl:
          'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?w=600',
    ),
    const Recipe(
      id: 'recette-005',
      name: 'Poisson grillé',
      description: 'Du poisson assaisonné et grillé.',
      category: 'Plats principaux',
      ingredients: ['Poisson', 'Citron', 'Ail', 'Poivre', 'Sel'],
      instructions: [
        'Nettoyer et assaisonner le poisson.',
        'Laisser mariner quelques minutes.',
        'Griller jusqu’à cuisson complète.',
      ],
      preparationTime: 35,
      servings: 2,
      imageUrl:
          'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600',
    ),
    const Recipe(
      id: 'recette-006',
      name: 'Salade de fruits',
      description: 'Un dessert coloré et rafraîchissant.',
      category: 'Desserts',
      ingredients: ['Banane', 'Mangue', 'Ananas', 'Orange'],
      instructions: [
        'Laver et éplucher les fruits.',
        'Couper les fruits en morceaux.',
        'Mélanger et servir frais.',
      ],
      preparationTime: 15,
      servings: 3,
      imageUrl:
          'https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?w=600',
    ),
    const Recipe(
      id: 'recette-007',
      name: 'Smoothie à la mangue',
      description: 'Une boisson fruitée et onctueuse.',
      category: 'Boissons',
      ingredients: ['Mangue', 'Lait', 'Eau', 'Miel'],
      instructions: [
        'Éplucher et couper la mangue.',
        'Mettre les ingrédients dans un mixeur.',
        'Mixer jusqu’à obtenir une texture lisse.',
      ],
      preparationTime: 10,
      servings: 2,
      imageUrl:
          'https://images.unsplash.com/photo-1505252585461-04db1eb84625?w=600',
    ),
    const Recipe(
      id: 'recette-008',
      name: 'Jus de bissap',
      description: 'Une boisson traditionnelle à base d’hibiscus.',
      category: 'Boissons',
      ingredients: ['Fleurs d’hibiscus', 'Eau', 'Sucre', 'Menthe'],
      instructions: [
        'Faire infuser les fleurs dans l’eau chaude.',
        'Filtrer puis laisser refroidir.',
        'Ajouter le sucre et la menthe selon le goût.',
      ],
      preparationTime: 20,
      servings: 4,
      imageUrl:
          'https://images.unsplash.com/photo-1544145945-f90425340c7e?w=600',
    ),
  ];

  // Récupérer toutes les recettes.
  List<Recipe> getAllRecipes() {
    return List.unmodifiable(_recipes);
  }

  // Rechercher une recette par son identifiant.
  Recipe? getRecipeById(String id) {
    for (final recipe in _recipes) {
      if (recipe.id == id) {
        return recipe;
      }
    }

    return null;
  }

  // Ajouter une nouvelle recette.
  void addRecipe(Recipe recipe) {
    final alreadyExists =
        _recipes.any((existing) => existing.id == recipe.id);

    if (alreadyExists) {
      throw ArgumentError('Cet identifiant de recette existe déjà.');
    }

    _recipes.add(recipe);
  }
}
