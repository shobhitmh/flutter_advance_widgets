import 'package:flutter/material.dart';

class homepahe extends StatelessWidget {
  const homepahe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/avatarglow');
                        },
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        ),
                        child: const Text(
                          'Avatar Glow Widget',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/lpull');
                        },
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        ),
                        child: Text(
                          'Liquid Pull To Refresh',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/percentindi');
                        },
                        child: Text(
                          'Percent Indicator',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/cubeswipe');
                        },
                        child: Text(
                          'Cube Swipe',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/pageindi');
                        },
                        child: Text(
                          'Smooth Page Indicator',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Myslidedwid');
                        },
                        child: Text(
                          'Slidable Widgets',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/heatmap');
                        },
                        child: Text(
                          'Heat Map',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/heatmapcalender');
                        },
                        child: Text(
                          'Heat Map Calender',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.padded,
                          overlayColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
