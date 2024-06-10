import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive_crud_narendra/models/users.dart';
import 'package:flutter_hive_crud_narendra/screens/stepper_register.dart';
import 'package:flutter_hive_crud_narendra/screens/user_form.dart';
import 'package:flutter_hive_crud_narendra/screens/users_list.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({super.key});

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  int currentIndex = 0;

  final screen = [
    Center(child: Text('Home',style: TextStyle(fontSize: 40))),
    UsersListScreen(),
    // StepperScreen(),
    UserForm(),
    Center(child: Text('Notification',style: TextStyle(fontSize: 40))),
    Center(child: Text('Profile',style: TextStyle(fontSize: 40))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('User Registration App',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 22),),
        backgroundColor: Colors.blue,
      ),
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (int index) => setState(() {
          currentIndex = index;
        }),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Users List',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Register',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          )
        ],
      ),
    );
  }
}
