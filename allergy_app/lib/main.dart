import 'package:allergy_app/account%20screen.dart';
import 'package:allergy_app/details%20screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'allergy app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Allergy App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            IconButton(
                icon:Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context)=> UserInfoPage()
                      )
                  );
                }
            ),

            IconButton(
                icon:Icon(Icons.question_mark ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => AdviceForUserPage()
                      )
                  );
                }
            ),
          ]
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              ' Your RISKY level out of 10 will be... ',
              style: TextStyle(fontSize: 24),
            ),

            Text(
                // If we change this to be a variable, we should remove const from ln 68
                " 7 ", style: TextStyle(fontSize: 60)
            )

          ],
        ),
      ),
    );
  }
}