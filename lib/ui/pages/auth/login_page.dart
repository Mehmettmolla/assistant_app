import 'package:assistant_app/ui/shared/widgets/Title/main_title.dart';
import 'package:assistant_app/ui/shared/widgets/buttons/login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  final String loginTitle = "Giriş Yap";
  final String bodyText = "Lorem Ipsum is simply dummy text of the printing.";
  final String emailLabelText = "E-Posta";
  final String passwordLabelText = "Parola";
  final String rememberMeText = "Beni Hatırla";
  final String forgotPasswordText = "Parolamı unuttum";
  final String buttonText = "Giriş";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const MainTitle(fontSize: 35)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              loginTitle,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(bodyText,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
            EmailLabelText(emailLabelText: emailLabelText),
            const EmailLabel(),
            PasswordLabelText(passwordLabelText: passwordLabelText),
            const PasswordLabel(),
            RememberMeButton(
                rememberMeText: rememberMeText,
                forgotPasswordText: forgotPasswordText),
            LoginButton(text: buttonText),
          ],
        ),
      ),
    );
  }
}

class PasswordLabelText extends StatelessWidget {
  const PasswordLabelText({
    Key? key,
    required this.passwordLabelText,
  }) : super(key: key);

  final String passwordLabelText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(passwordLabelText, style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}

class EmailLabelText extends StatelessWidget {
  const EmailLabelText({
    Key? key,
    required this.emailLabelText,
  }) : super(key: key);

  final String emailLabelText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          emailLabelText,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

class RememberMeButton extends StatelessWidget {
  const RememberMeButton({
    Key? key,
    required this.rememberMeText,
    required this.forgotPasswordText,
  }) : super(key: key);

  final String rememberMeText;
  final String forgotPasswordText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: ListTile(
            leading: Radio(
              value: "value",
              groupValue: "value",
              onChanged: (value) {},
            ),
          ),
        ),
        Text(rememberMeText),
        const Spacer(flex: 4),
        TextButton(
          onPressed: null,
          child: Text(
            forgotPasswordText,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

class PasswordLabel extends StatelessWidget {
  const PasswordLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.remove_red_eye,
              color: Colors.grey, textDirection: TextDirection.rtl),
          hintText: "*******",
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
  }
}

class EmailLabel extends StatelessWidget {
  const EmailLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintText: "ornek@ornek.com",
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
