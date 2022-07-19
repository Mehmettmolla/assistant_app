import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  final IconData icon;
  final String title;
  const BottomCard({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 95,
      child: Card(
        shadowColor: Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon, size: 40, color: Colors.grey),
            Text(title,
                style: const TextStyle(fontSize: 20, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
