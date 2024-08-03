import 'package:flutter/cupertino.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreenProvider extends ChangeNotifier{
  String _userType = '';
  void handleCreateAccount({required BuildContext context,}) async {
    print("this is new user type ${_userType}");
    if(_userType =="company"){
          context.go(AppRouteConstants.registrationScreenCompany);
    }else if(_userType =="candidate"){
          context.go(AppRouteConstants.registration);
    }
    notifyListeners();
  }

  Future<void> saveUserType({required String userType,required BuildContext context}) async {
    _userType = userType;
    print("this is user type ${userType} ");
    print("this is user type ${_userType} ");
    context.go(AppRouteConstants.wellCome);
    notifyListeners();
    }

}