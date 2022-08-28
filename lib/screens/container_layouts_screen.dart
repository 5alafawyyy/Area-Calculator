import 'package:flutter/material.dart';

class ContainerLayoutsScreen extends StatelessWidget {
  const ContainerLayoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Container Layouts'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 500.0,
              width: 300.0,
              margin: const EdgeInsets.all(
                30.0,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // image: AssetImage('assets/images/flutter.png'),
                  image: NetworkImage('http://bit.ly/flutter_tiger'),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeatY,
                ),
                color: Colors.orange,
                shape: BoxShape.rectangle,
                // shape: BoxShape.rectangle,
                // gradient: LinearGradient(
                //   colors: [
                //     Colors.pink.shade50,
                //     Colors.pink.shade500,
                //   ],
                // ),
              ),
              // child: const FlutterLogo(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 150.0,
                    margin: const EdgeInsets.all(
                      20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.rectangle,
                      gradient: const LinearGradient(
                          begin: Alignment(0.0, -1.0), // Using Axis values
                          // begin: const Alignment.topCenter,
                          end: Alignment(0.0, -0.8),
                          tileMode: TileMode.repeated,
                          colors: [
                            Colors.blue,
                            Colors.green,
                            Colors.deepPurple,
                            Colors.pink,
                          ]),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    margin: const EdgeInsets.all(
                      20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.rectangle,
                      gradient: const LinearGradient(
                          stops: [
                            0.5,
                            0.6,
                            0.7,
                            0.8
                          ], // Start from and end to for each color
                          tileMode: TileMode.clamp,
                          colors: [
                            Colors.blue,
                            Colors.green,
                            Colors.deepPurple,
                            Colors.pink,
                          ]),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 150.0,
                    margin: const EdgeInsets.all(
                      20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.rectangle,
                      gradient: const RadialGradient(
                        tileMode: TileMode.clamp,
                        radius: 0.25,
                        center: Alignment(
                          0.0,
                          0.5,
                        ),
                        colors: [
                          Colors.blue,
                          Colors.green,
                          Colors.deepPurple,
                          Colors.pink,
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    margin: const EdgeInsets.all(
                      20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.rectangle,
                      gradient: const RadialGradient(
                        tileMode: TileMode.clamp,
                        radius: 0.25,
                        center: Alignment.center,
                        colors: [
                          Colors.blue,
                          Colors.green,
                          Colors.deepPurple,
                          Colors.pink,
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.lightbulb_outline,
      //   ),
      // ),
      // persistentFooterButtons: [
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.add_a_photo,
      //     ),
      //   ),
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.add_a_photo,
      //     ),
      //   ),
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.add_a_photo,
      //     ),
      //   ),
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.add_a_photo,
      //     ),
      //   ),
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.add_a_photo,
      //     ),
      //   ),
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(
      //       Icons.add_a_photo,
      //     ),
      //   ),
      // ],
    );
  }
}
