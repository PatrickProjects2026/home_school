import 'package:flutter/material.dart';
import 'package:home_school/eng.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/Language_': (context) => const Eng()},
      title: 'HOME SCHOOL',
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
                Icon(Icons.menu, color: Colors.white)
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
              cont1(context, "ENGLISH", "english.png", "Learn english basics."),
              Text(""),
              cont1(context, "FRENCH", "france.png", "Learn french basics."),
              Text(""),
              cont1(context, "SPANISH", "spain.png", "Learn spanish basics."),
              Text(""),
              cont1(context, "ZULU", "sa.png", "Learn zulu basics."),
              Spacer(),
              footer(context)
            ])) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont1(context, text_, img_, title_) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Language_', arguments: {
          'Language': text_,
        });
      },
      child: Container(
          width: 300, // Set the width of the container
          height: 80, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
            color: Colors.black, // Set the background color
            borderRadius: BorderRadius.circular(
                20.0), // Set the border radius to make corners rounded
          ),
          child: Row(
            children: [
              Text("    "),
              Image.asset(
                'assets/$img_',
                fit: BoxFit.cover,
                width: 100.0,
                height: 50.0,
              ),
              Column(
                children: [
                  Spacer(),
                  Text(
                    ' $text_',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  Text(
                    ' $title_',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),
                  Spacer()
                ],
              )
            ],
          )));
}

Widget cont2(context, text_, img_, title_) {
  return Container(
      width: 300, // Set the width of the container
      height: 80, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Row(
        children: [
          Text(" "),
          Image.asset(
            'assets/$img_',
            fit: BoxFit.cover,
            width: 100.0,
            height: 50.0,
          ),
          Column(
            children: [
              Text(
                ' $text_',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 23.0, color: Colors.white),
              ),
              Text(
                ' $title_',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              )
            ],
          )
        ],
      ));
}

Widget cont(context, text_, img_, title_) {
  return Container(
      width: 300, // Set the width of the container
      height: 80, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Row(
        children: [
          Text(" "),
          Image.asset(
            'assets/$img_',
            fit: BoxFit.cover,
            width: 100.0,
            height: 50.0,
          ),
          Column(
            children: [
              Text(
                ' $text_',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 23.0, color: Colors.white),
              ),
              Text(
                ' $title_',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              )
            ],
          )
        ],
      ));
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
