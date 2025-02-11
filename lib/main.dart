import 'package:flutter/material.dart';
import 'package:flutter_bloc_news_app/core/res/colours.dart';
import 'package:flutter_bloc_news_app/core/res/fonts.dart';
import 'package:flutter_bloc_news_app/core/services/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News App',
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Fonts.poppins,
        appBarTheme: const AppBarTheme(color: Colours.pureWhite),
        scaffoldBackgroundColor: Colours.lightGray,
        colorScheme: ColorScheme.fromSwatch(accentColor: Colours.deepBlue),
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
