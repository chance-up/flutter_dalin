import 'package:flutter/material.dart';

class EstimateScreen extends StatefulWidget {
  const EstimateScreen({Key? key}) : super(key: key);

  @override
  State<EstimateScreen> createState() => _EstimateScreenState();
}

class _EstimateScreenState extends State<EstimateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "견적 페이지",
        ),
        backgroundColor: const Color.fromRGBO(42, 193, 188, 1),
      ),
    );
  }
}
