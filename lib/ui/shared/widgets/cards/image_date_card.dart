import 'package:flutter/material.dart';

class ImageDateCard extends StatelessWidget {
  final String photo;
  final String hour;
  const ImageDateCard({Key? key, required this.hour, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 65,
          height: 65,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Color(0xff74d473), width: 1),
            ),
            child: Image.asset(
              photo,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          hour,
          style: const TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
