import 'package:flutter/material.dart';

import '../minor_screens/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                  width: 1.4,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "What are you looking for",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 32,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(child: Text('Search')),
                  ),
                ],
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: [
              RepeatedTab(label: 'Men'),
              RepeatedTab(label: 'Women'),
              RepeatedTab(label: 'Shoes'),
              RepeatedTab(label: 'Bags'),
              RepeatedTab(label: 'Electronics'),
              RepeatedTab(label: 'Accessories'),
              RepeatedTab(label: 'Home & Garden'),
              RepeatedTab(label: 'Kids'),
              RepeatedTab(label: 'Beauty'),
            ],
            isScrollable: true,
            indicatorColor: Colors.yellow,
            indicatorWeight: 8,
            padding: EdgeInsets.all(0),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Man Screen"),
            ),
            Center(
              child: Text("Women Screen"),
            ),
            Center(
              child: Text("Shoes Screen"),
            ),
            Center(
              child: Text("Bags Screen"),
            ),
            Center(
              child: Text("Electronics Screen"),
            ),
            Center(
              child: Text("Accessories Screen"),
            ),
            Center(
              child: Text("Home & Garden Screen"),
            ),
            Center(
              child: Text("Kids Screen"),
            ),
            Center(
              child: Text("Beauty Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;

  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}
