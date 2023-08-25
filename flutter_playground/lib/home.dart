import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Flutter Playground"),
        elevation: 1.0,
      ),
      body: SizedBox(
        width: size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Square(
              color: Colors.red,
              size: 100,
              text: "1",
            ),
            Square(
              color: Colors.yellow,
              size: 100,
              text: "2",
            ),
            Square(
              color: Colors.green,
              size: 100,
              text: "3",
            ),
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  final double size;
  final Color color;
  final String text;

  const Square({
    super.key,
    this.size = 100,
    required this.color,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
