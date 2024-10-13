import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 253, 207, 0),
          leading: const Text("data"),
          title: const Text('My App'),
          actions: const [Text("My App"), Text("ABC")],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              /// Short Way Custom Container
              customContainer(200, 300, const Color.fromARGB(255, 0, 172, 6)),
              customContainer(200, 300, const Color.fromARGB(255, 255, 94, 0)),
              customContainer(200, 300, const Color.fromARGB(255, 163, 11, 0)),
              customContainer(200, 300, const Color.fromARGB(255, 207, 142, 0)),

              /// Default Container
              Container(
                color: Colors.blueAccent,
                width: 200,
                height: 200,
              ),

              Row(
                children: [
                  /// Short Way Custom Continer
                  customContainer(
                      200, 300, const Color.fromARGB(255, 0, 172, 6)),
                  customContainer(
                      200, 300, const Color.fromARGB(255, 255, 94, 0)),
                  customContainer(
                      200, 300, const Color.fromARGB(255, 163, 11, 0)),
                  customContainer(
                      200, 300, const Color.fromARGB(255, 207, 142, 0)),
                ],
              ),
            ],
          ),
        ),

        //  color: null,
      ),
    );
  }
}

//// Function

Widget customContainer(height, width, color) {
  return Container(
    height: height,
    width: width,
    color: color,
  );
}
