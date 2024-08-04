import 'package:flutter/cupertino.dart';
import 'package:flutter_code_structure/Presentation/Screens/Auth/Registraion/View/registration_screen_company.dart';
import 'package:flutter_code_structure/Presentation/Screens/Auth/Registraion/View/registration_screen_user.dart';
import 'package:flutter_code_structure/Presentation/Screens/WellcomeScreen/well_come_screen.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreenProvider extends ChangeNotifier{
  String _userType = '';
  void handleCreateAccount({required BuildContext context,}) async {
    print("this is new user type ${_userType}");
    if(_userType =="company"){
      Get.to(()=>const RegistrationScreenCompany());
    }else if(_userType =="candidate"){
      Get.to(()=>const RegistrationScreen());
    }
    notifyListeners();
  }

  Future<void> saveUserType({required String userType,required BuildContext context}) async {
    _userType = userType;
    print("this is user type ${userType} ");
    print("this is user type ${_userType} ");
    Get.to(()=>const WellComeScreen());
    notifyListeners();
    }

}