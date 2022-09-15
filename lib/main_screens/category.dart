import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/fake_search.dart';

List<ItemsData> categories = [
  ItemsData(label: 'men'),
  ItemsData(label: 'women'),
  ItemsData(label: 'shoes'),
  ItemsData(label: 'electronics'),
  ItemsData(label: 'accessories'),
  ItemsData(label: 'home & garden'),
  ItemsData(label: 'kids'),
  ItemsData(label: 'beauty'),
];

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

  Widget sideNavigator(mediaQuery) {
    return SizedBox(
      height: mediaQuery.size.height * 0.8,
      width: mediaQuery.size.width * 0.2,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              for (var element in categories) {
                element.isSelected = false;
              }
              setState(() {
                categories[index].isSelected = true;
              });
            },
            child: Container(
              color: categories[index].isSelected
                  ? Colors.white
                  : Colors.grey.shade300,
              height: 100,
              child: Center(
                child: Text(categories[index].label),
              ),
            ),
          );
        },
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
}

class ItemsData {
  final String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
