import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.blue,
            height: 20,
            width: 20,
          ),
           Container(
            color: Colors.red,
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}
