import 'package:assistant_app/ui/pages/auth/auth_page.dart';
import 'package:assistant_app/ui/pages/auth/login_page.dart';
import 'package:assistant_app/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() => runApp(
      const GetMaterialApp(home: AuthPage(), debugShowCheckedModeBanner: false),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: '/auth', page: () => const AuthPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
