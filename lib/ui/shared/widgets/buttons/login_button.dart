import 'package:assistant_app/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  final String text;
  const LoginButton({Key? key, required this.text}) : super(key: key);
  static const navigationHome = HomePage();
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(navigationHome);
      },
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: const Color(0xff74d473),
        minimumSize: const Size(200, 70),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
