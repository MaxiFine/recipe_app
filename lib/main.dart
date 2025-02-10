import 'package:flutter/material.dart';
import 'recipe.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green[450],
          secondary: Colors.black,
          // background: Colors.white,
          // error: Colors.red,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return buildRecipeCard(Recipe.samples[index]);
          },
        ),
      ),
    );
  }

  // Widget buildRecipeCard(Recipe recipe) {
  //   return Card(
  //     child: Column(
  //       children: <Widget>[
  //         Image(image: AssetImage(recipe.imageUrl)),
  //         Text(recipe.label),
  //       ],
  //       ),
  //   );
  // }

  Widget buildRecipeCard(Recipe recipe) {
  try {
    final byteData = rootBundle.load(recipe.imageUrl);
    print('Asset loaded successfully: ${recipe.imageUrl}');
  } catch (e) {
    print('Failed to load asset: ${recipe.imageUrl}, Error: $e');
  }

  return Card(
    child: Column(
      children: <Widget>[
        Image(image: AssetImage(recipe.imageUrl)),
        Text(recipe.label),
      ],
    ),
  );
}
}
