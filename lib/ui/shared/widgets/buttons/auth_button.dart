import 'package:assistant_app/ui/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  final String text;
  const AuthButton({Key? key, required this.text}) : super(key: key);
  static const navigationLogin=LoginPage();
  final String buttonTitle ="Başla";
  @override
  Widget build(BuildContext context) {
    return TextButton(
              onPressed: () {
                Get.to(navigationLogin);
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), 
                ),
                backgroundColor: const Color(0xff74d473),
                minimumSize: const Size(160, 70),
              ),
              child: Text(
                buttonTitle,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            );
  }
}
