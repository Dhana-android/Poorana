import 'package:flutter/material.dart';
import 'package:poorana_app/widgets/nav-drawer.dart';


/*void main() => runApp(const MyApp());*/
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const String _title = 'Poorana';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const LoginWidget(),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
                  'Welcome!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter User ID',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              //child: const Text('Forgot Password',),
              child: const Text('',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    /*print(nameController.text);
                    print(passwordController.text);*/
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  MyHomePage()),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          //fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )
            ),
            /*Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),*/
          ],
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Poorana'),
      ),
      /*body: Center(
        child: Text('Side Menu Tutorial'),
      ),*/
      body: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
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
                  'Manage Food Orders',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )),
        Row(children: [
        Container(
          width: 130,
        height: 70,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ElevatedButton(
          child: const Text('  Create    New Order'),
          onPressed: () {
            /*print(nameController.text);
                    print(passwordController.text);*/
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MyHomePage()),
            );
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: TextStyle(
                //fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
    ),
    Container(
        width: 130,
        height: 70,
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: ElevatedButton(
    child: const Text('View Pending & Past Orders'),
    onPressed: () {
    /*print(nameController.text);
                    print(passwordController.text);*/
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MyHomePage()),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
    textStyle: TextStyle(
    //fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold)),
    )
    ),
          ]),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Pending Orders',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )),
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(70.0),
                border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2),
                children: [
                  TableRow( children: [
                    Column(children:[Text('Date', style: TextStyle(fontSize: 15.0))]),
                    Column(children:[Text('BF', style: TextStyle(fontSize: 15.0))]),
                    Column(children:[Text('LUN', style: TextStyle(fontSize: 15.0))]),
                    Column(children:[Text('Snac', style: TextStyle(fontSize: 15.0))]),
                    Column(children:[Text('Din', style: TextStyle(fontSize: 15.0))]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/01/23')]),
                    Column(children:[Text('267')]),
                    Column(children:[Text('45')]),
                    Column(children:[Text('45')]),
                    Column(children:[Text('50')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/01/23')]),
                    Column(children:[Text('267')]),
                    Column(children:[Text('45')]),
                    Column(children:[Text('45')]),
                    Column(children:[Text('50')]),
                  ]),
                  TableRow( children: [
                    Column(children:[Text('02/01/23')]),
                    Column(children:[Text('267')]),
                    Column(children:[Text('45')]),
                    Column(children:[Text('45')]),
                    Column(children:[Text('50')]),
                  ]),
                ],
              ),
            ),
          ],
        ));
  }
}