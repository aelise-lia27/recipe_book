
import 'package:flutter/material.dart';
import '../model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback? onTap;

  const RecipeCard({
    super.key,
    required this.recipe,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              recipe.imageUrl,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 160,
                  child: Center(
                    child: Icon(Icons.restaurant, size: 40),
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(recipe.category),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.access_time, size: 18),
                      const SizedBox(width: 4),
                      Text('${recipe.preparationTime} min'),
                      const SizedBox(width: 16),
                      const Icon(Icons.people_outline, size: 18),
                      const SizedBox(width: 4),
                      Text('${recipe.servings} personnes'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    recipe.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
