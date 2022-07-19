import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String number;
  const HomeCard(
      {Key? key, required this.icon, required this.title, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 115,
      child: Card(
          shadowColor: Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon, size: 45, color: const Color(0xff74d473)),
              Text(title,
                  style: const TextStyle(fontSize: 15, color: Colors.grey)),
              Text(number,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          )),
    );
  }
}
