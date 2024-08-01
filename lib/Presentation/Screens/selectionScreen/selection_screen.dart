import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_code_structure/Presentation/Widget/my_button.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import '../../Widget/custom_bg.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  Future<void> _saveUserType(String userType) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userType', userType);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false; // Prevent the default behavior
      },
      child: CustomBackGround(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Image.asset('assets/Images/name_logo.png', width: 400, height: 120),
              const Spacer(),
              const Text(
                'What is your\nChoice ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 44,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    width: 120,
                    btnColor: Colors.transparent,
                    onTap: () async {
                      await _saveUserType('company');
                      context.go(AppRouteConstants.wellCome);
                    },
                    title: 'I am\na company',
                    txtColor: Theme.of(context).hintColor,
                    brdColor: Colors.white,
                  ),
                  MyButton(
                    width: 120,
                    btnColor: Colors.transparent,
                    onTap: () async {
                      await _saveUserType('candidate');
                      context.go(AppRouteConstants.wellCome);
                    },
                    title: 'I am\na candidate',
                    txtColor: Theme.of(context).hintColor,
                    brdColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
