import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_code_structure/Presentation/Widget/my_button.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import '../../Widget/custom_bg.dart';

class WellComeScreen extends StatelessWidget {
  const WellComeScreen({super.key});

  Future<String?> _getUserType() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('userType');
  }

  void _handleCreateAccount(BuildContext context) async {
    String? userType = await _getUserType();
    if (userType == 'candidate') {
      context.go(AppRouteConstants.registration);
    } else {
      context.go(AppRouteConstants.registrationScreenCompany);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackGround(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/Images/logo.png', width: 250),
          const Text(
            ' Welcome to',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 15),
          Image.asset('assets/Images/name_logo.png', width: 400, height: 80),
          const Text(
            'Get yourself\na job !',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          MyButton(
            title: 'Create an account',
            onTap: () => _handleCreateAccount(context),
          ),
          const SizedBox(height: 15),
          MyButton(
            title: 'Login',
            onTap: () {
              context.go(AppRouteConstants.login);
            },
          ),
        ],
      ),
    );
  }
}
