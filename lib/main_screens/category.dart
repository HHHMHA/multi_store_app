import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/fake_search.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(mediaQuery),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categoryView(mediaQuery),
          ),
        ],
      ),
    );
  }

  Widget categoryView(mediaQuery) {
    return Container(
      height: mediaQuery.size.height * 0.8,
      width: mediaQuery.size.width * 0.8,
      color: Colors.white,
    );
  }

  Widget sideNavigator(mediaQuery) {
    return Container(
      height: mediaQuery.size.height * 0.8,
      width: mediaQuery.size.width * 0.2,
      color: Colors.grey.shade300,
    );
  }
}
