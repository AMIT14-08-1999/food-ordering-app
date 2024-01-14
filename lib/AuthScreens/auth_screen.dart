import 'package:flutter/material.dart';
import 'package:foodorderappone/AuthScreens/sign_in_screen.dart';
import 'package:foodorderappone/AuthScreens/sign_up_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'iFood',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.login_rounded,
                  color: Colors.white,
                ),
                text: "Log in",
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                text: "Sign Up",
              ),
            ],
            indicatorColor: Colors.white30,
            indicatorWeight: 5,
          ),
        ),
        body: Container(
          color: Colors.black87,
          child: const TabBarView(
            children: [
              SignInScreen(),
              SignUpScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
