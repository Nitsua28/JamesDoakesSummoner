import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text("James Doakes Summoner")),
        ),
        body: MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _counter = false;
  @override
  bool changeText(var counter) {
    return (counter) ? false : true;
  }

  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 50),
      backgroundColor: Colors.green,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    );

    return Column(children: <Widget>[
      //button
      Center(
          child: ElevatedButton(
        style: style,
        onPressed: (() {
          setState(() {
            _counter = changeText(_counter);
          });
        }),
        child: const Text("Summon"),
      )),
      if (_counter)
        const Text("SURPRISE",
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 240)),
      if (_counter)
        const Expanded(
          child: Image(
              image: NetworkImage(
                  "https://i.kym-cdn.com/entries/icons/original/000/010/173/BigSurprise.jpg")),
        ),
    ]);
  }
}
