import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// class AppKel extends StatefulWidget {
//   const AppKel({super.key});

//   @override
//   State<AppKel> createState() => _AppKelState();

class MyKel extends StatelessWidget {
  const MyKel({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Kelipatan 3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const AppKel(title: 'Maysa Aulia Salsabila (Ganjil)'),
    );
  }
}

class AppKel extends StatefulWidget {
  const AppKel({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AppKel> createState() => _AppKelState();
}

class _AppKelState extends State<AppKel> {
  int _counter = 0;
  String _text = "Mulai";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 30) {
        _counter = 0;
      }
      _text = "Kelipatan 3: ";
      for (int i = 1; i <= _counter; i++) {
        if (i % 3 == 0 && i % 3 != 1) {
          _text += '${i}, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Klik tombol + untuk mengetahui kelipatan 3:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
