import 'package:flutter/material.dart';
import 'package:flutter_hive_crud_narendra/models/users.dart';
import 'package:flutter_hive_crud_narendra/user_register.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();

  await Hive.openBox('users');
  Hive.registerAdapter(UsersModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserRegister(),
    );
  }
}

