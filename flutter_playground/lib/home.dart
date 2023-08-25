import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Playground"),
        centerTitle: false,
        elevation: 1.0,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCard(
            model: CardModel(
              name: 'Mauro A. Santos',
              urlImage:
                  'https://media.licdn.com/dms/image/D4D03AQHRCbj1hD5uFg/profile-displayphoto-shrink_800_800/0/1690832740659?e=1698278400&v=beta&t=Z7wLdhQXsxHdD8n0G2Tb4d6cqXKmSagEThVo2Ydf4mI',
            ),
          ),
          CustomCard(
            model: CardModel(
              name: 'Julio Macedo',
              urlImage:
                  'https://media.licdn.com/dms/image/C4D03AQGZ3IJO5J0LeA/profile-displayphoto-shrink_800_800/0/1575557698635?e=1698278400&v=beta&t=pE5lBK8deRqZIhBv_Wl3cghTAUtVE2qQ9vlyoRFk7Ok',
            ),
          ),
          CustomCard(
            model: CardModel(
              name: 'Vanessa Santos',
              urlImage:
                  'https://media.licdn.com/dms/image/D4D03AQGW0SmgXMefEA/profile-displayphoto-shrink_800_800/0/1666653051098?e=1698278400&v=beta&t=tVkPk0ZASTtUdw8r77TGzi8I8ZB6-WnD30mo971yFyg',
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final CardModel model;
  final double height;

  const CustomCard({
    super.key,
    required this.model,
    this.height = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: SizedBox(
        height: height,
        child: Card(
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.network(
                  fit: BoxFit.cover,
                  model.urlImage,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.40,
                  color: Colors.black.withOpacity(0.50),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(model.name),
                      const Text('Flutterando Masterclass'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardModel {
  final String name;
  final String urlImage;

  const CardModel({
    required this.name,
    required this.urlImage,
  });
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
