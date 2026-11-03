
class Recipe {
  final String id;
  final String name;
  final String description;
  final String category;
  final List<String> ingredients;
  final List<String> instructions;
  final int preparationTime;
  final int servings;
  final String imageUrl;

  const Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.ingredients,
    required this.instructions,
    required this.preparationTime,
    required this.servings,
    required this.imageUrl,
  });
}
