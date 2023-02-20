import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:movies_app/presentation/providers/trending_movies/treding_movies_list_provider.dart';
import 'package:movies_app/presentation/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

import 'dependencies_injection/module_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ModuleContainer().initialise(Injector());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => TrendingMoviesListProvider()),
      ],
      child: MaterialApp(
        title: 'Movies List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}
