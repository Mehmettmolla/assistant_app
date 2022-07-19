import 'package:assistant_app/ui/pages/auth/login_page.dart';
import 'package:assistant_app/ui/shared/widgets/Title/main_title.dart';
import 'package:assistant_app/ui/shared/widgets/buttons/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);
  final String welcomeTitle = "Dijital Asistan'a hoşgeldiniz!";
  final String bodyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the.";
  final String buttonText = "Başla";
  final String accountText = "Zaten hesabınız var mı?";
  final String loginText = "Giriş Yap";
  static const navigationLogin = LoginPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const MainTitle(fontSize: 40),
            Text(welcomeTitle,
                style: const TextStyle(fontSize: 30),
                textAlign: TextAlign.center),
            Text(bodyText,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
            const Icon(Icons.keyboard_double_arrow_down,
                color: Color(0xff74d473), size: 60),
            AuthButton(text: buttonText),
            Text(
              accountText,
              style: const TextStyle(fontSize: 20),
            ),
            LoginTextButton(
                navigationLogin: navigationLogin, loginText: loginText)
          ],
        ),
      ),
    );
  }
}

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({
    Key? key,
    required this.navigationLogin,
    required this.loginText,
  }) : super(key: key);

  final LoginPage navigationLogin;
  final String loginText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(navigationLogin);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            loginText,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xff74d473)),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.arrow_forward,
            size: 38,
            color: Color(0xff74d473),
          )
        ],
      ),
    );
  }
}
