import 'package:flutter/material.dart';

class NurlifeWidget extends StatelessWidget {
  final String text;

  const NurlifeWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Stack(
        children: [
          // Arka plan daire
          const Positioned(
            width: 50,
            height: 50,
            left: 0,
            bottom: 0,
            child: CircleAvatar(
              backgroundColor: Colors.pink,
            ),
          ),
          // İçerik
          Positioned(
            bottom: 12,
            left: 8,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
