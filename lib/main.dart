import 'package:flutter/material.dart';
import 'package:groceryapp/auth/login_or_register.dart';
import 'package:groceryapp/model/cart_model.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginOrRegister(),
      ),
    );
  }
}
