import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;

  // final List<Widget> _pages = [
  //   Center(child: Text('Page 1')),
  //   Center(child: Text('Page 2')),
  //   Center(child: Text('Page 3')),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            forceElevated: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => print('menu'),
                    child: const Icon(
                      Icons.menu_outlined,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('Главная страница'),
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
                        Icons.menu_outlined,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => print('menu'),
                      child: const Icon(
                        Icons.menu_outlined,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            leadingWidth: double.maxFinite,
            toolbarHeight: 34,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
