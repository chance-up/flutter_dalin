import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dalin/views/search_screen.dart';
import '../transition/slide_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "주소가 들어간다.",
        ),
        backgroundColor: const Color.fromRGBO(42, 193, 188, 1),
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                  context, SlideLeftRoute(page: const SearchScreen()));
            }),
      ),
    );
  }
}
