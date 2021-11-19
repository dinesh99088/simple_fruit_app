import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fruits Mania',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  var fruits = ["Apple", "Mango", "Rambutan"];
  var fruitColor = ["Green", "Yellow", "Red"];
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Mania'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (myController.text == "1") {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("You choose " +
                      fruits[0] +
                      " and it is of Color " +
                      fruitColor[0]),
                );
              },
            );
          } else if (myController.text == "2") {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("You choose " +
                      fruits[1] +
                      " and it is of Color " +
                      fruitColor[1]),
                );
              },
            );
          } else if (myController.text == "3") {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("You choose " +
                      fruits[2] +
                      " and it is of Color " +
                      fruitColor[2]),
                  //content: Text(fruits[2]),
                );
              },
            );
          } else {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(
                      "Enter Number only between 1 to 3, no text character allowed"),
                  //content: Text(fruits[2]),
                );
              },
            );
          }
        },
        tooltip: 'Show Fruits',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
