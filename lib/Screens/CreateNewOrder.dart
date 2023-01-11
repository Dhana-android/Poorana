import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: CreateNewOrder(),
  ));
}

class CreateNewOrder extends StatelessWidget {
  const CreateNewOrder({Key? key}) : super(key: key);

  static const String _title = 'Poorana';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const CreateOrderWidget(),
      ),
    );
  }
}

class CreateOrderWidget extends StatefulWidget {
  const CreateOrderWidget({Key? key}) : super(key: key);

  @override
  State<CreateOrderWidget> createState() => _CreateOrderWidgetState();
}

class _CreateOrderWidgetState extends State<CreateOrderWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 120.0,
              width: 0.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/pooranalogo.png'),
                  fit: BoxFit.none,
                ),
                shape: BoxShape.rectangle,
              ),
            ),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ));
  }
}