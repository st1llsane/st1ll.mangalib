import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st1ll_mangalib/pages/home_page.dart';
import 'package:st1ll_mangalib/shared/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
