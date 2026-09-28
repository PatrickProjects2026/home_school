import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:home_school/main.dart';
import 'package:home_school/sub.dart';

void main() {
  runApp(const Eng());
}

String language = "";
List<String> titles = [];

class Eng extends StatelessWidget {
  const Eng({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    language = args['Language'];

    List<String> eng = [
      'Numbers & Alphabets',
      'Verbs & Nouns',
      'Vowel & Word Order',
      'Tenses',
      'Questions',
      'Test'
    ];

    List<String> spa = [
      'Numeros y alfabetos',
      'Verbos y sustantivos',
      'Vocales y las palabras',
      'Tiempos verbales',
      'Preguntas',
      'Prueba'
    ];

    List<String> fre = [
      'Chiffres et alphabets',
      'Verbes et noms',
      'Ordre voyelles et mots',
      'Temps',
      'Des Questions',
      'Test'
    ];

    List<String> zul = [
      'Izinombolo Nezinhlamvu',
      'Izenzo namabizo',
      'uKuhleleka Kwamagama',
      'Izikhathi',
      'Imibuzo',
      'Hlola'
    ];

    if (language == "ENGLISH") {
      titles = eng;
    } else if (language == "SPANISH") {
      titles = spa;
    } else if (language == "FRENCH") {
      titles = fre;
    } else if (language == "ZULU") {
      titles = zul;
    }

    return MaterialApp(
      title: 'HOME SCHOOL',
      routes: {'/Subject_': (context) => const Sub()},
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Colors.black,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Row(
              children: [
                text_(context, "HOME SCHOOL"),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    child: Icon(Icons.menu, color: Colors.white))
              ],
            )),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Spacer(),
              // Text(language),
              cont(context, titles[0].toString(), "one"),
              Text(""),
              cont(context, titles[1].toString(), "two"),
              Text(""),
              cont(context, titles[2].toString(), "three"),
              Text(""),
              cont(context, titles[3].toString(), "four"),
              Text(""),
              cont(context, titles[4].toString(), "five"),
              Text(""),
              cont(context, titles[5].toString(), "six"),
              Spacer(),
              footer(context)
            ])) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont(context, text_, subject_) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Subject_',
            arguments: {'Language': language, 'Subject': subject_});
      },
      child: Container(
          width: 300, // Set the width of the container
          height: 60, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Colors.black, // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Text(" "),
              Row(
                children: [
                  Icon(
                    Icons.apps,
                    color: Colors.white,
                  ),
                  Text(
                    '   $text_',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                  ),
                ],
              )
            ],
          )));
}

Widget text_(context, text_) {
  return Text(
    ' $text_',
    textAlign: TextAlign.left,
    style: TextStyle(fontSize: 23.0, color: Colors.white),
  );
}

Widget footer(context) {
  return Container(
      width: 500, // Set the width of the container
      height: 30, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            0), // Set the border radius to make corners rounded
      ),
      child: Row(children: [
        Spacer(),
        Icon(Icons.help_outline, color: Colors.white),
        Spacer()
      ]));
}
