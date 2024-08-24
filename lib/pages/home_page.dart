import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st1ll_mangalib/shared/theme/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          forceElevated: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(),
                  child: const Icon(
                    Icons.menu_rounded,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Главная',
                  style: TextStyle(
                    color: color.primary,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => print('menu'),
                    child: const Icon(
                      Icons.menu_rounded,
                      size: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => print('menu'),
                    child: const Icon(
                      Icons.menu_rounded,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
          leadingWidth: double.maxFinite,
          toolbarHeight: 34,
        ),
      ],
    );
  }
}
