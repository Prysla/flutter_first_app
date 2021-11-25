import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Psaved Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Psaved '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
                //   backgroundImage: NetworkImage(
                //       "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              ),
              title: const Text("Prysla Saved"),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 7,
                  ),
                  Text("Hello, how are you?")
                ],
              ),
              trailing: Column(
                children: const [
                  Text("5:30"),
                  Icon(Icons.notifications),
                ],
              ))),
    );
  }
}
