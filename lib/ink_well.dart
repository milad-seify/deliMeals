import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    Color color = Colors.yellow;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedContainer(
          height: sideLength,
          width: sideLength,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          child: ClipOval(
            child: Material(
              color: color,
              child: InkWell(
                onTap: () {
                  setState(() {
                    sideLength == 50 ? sideLength = 100 : sideLength = 50;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
