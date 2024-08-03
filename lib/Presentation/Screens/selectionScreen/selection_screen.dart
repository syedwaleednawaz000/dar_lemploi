import 'package:flutter/material.dart';
import 'package:flutter_code_structure/Presentation/Screens/WellcomeScreen/welcome_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_code_structure/Presentation/Widget/my_button.dart';
import '../../Widget/custom_bg.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});



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
                      Provider.of<WelcomeScreenProvider>(context,listen: false).saveUserType(userType: 'company', context: context);
                    },
                    title: 'I am\na company',
                    txtColor: Theme.of(context).hintColor,
                    brdColor: Colors.white,
                  ),
                  MyButton(
                    width: 120,
                    btnColor: Colors.transparent,
                    onTap: () async {
                      Provider.of<WelcomeScreenProvider>(context,listen: false).saveUserType(userType: 'candidate', context: context);
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
