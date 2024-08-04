import 'package:flutter/material.dart';
import 'package:flutter_code_structure/Language/app_translation.dart';
import 'package:flutter_code_structure/Presentation/Widget/my_button.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import '../../../../Widget/custom_bg.dart';
import '../CreateAnAccount/create_an_account_company.dart';

class RegistrationScreenCompany extends StatelessWidget {
  const RegistrationScreenCompany({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Image.asset(
                    'assets/Images/name_logo.png', width: 400, height: 120),
                const SizedBox(height: 50),
                Text(AppTranslations.of(context).companyName, textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const SizedBox(height: 5),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12, vertical: -9),
                    hintText: AppTranslations.of(context).aRKAAgency,
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                    // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                 Text(AppTranslations.of(context).email, textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const SizedBox(height: 5),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12, vertical: -9),
                    hintText: 'agence.arka@gmail.com',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                    // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                 Text(AppTranslations.of(context).phoneNumber, textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const SizedBox(height: 5),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12, vertical: -9),
                    hintText: '021254652',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                    // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(AppTranslations.of(context).password, textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                const SizedBox(height: 5),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12, vertical: -9),
                    hintText: '**************',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                    // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                 Text(
                    AppTranslations.of(context).passwordConfirmation, textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 19)),
                const SizedBox(height: 5),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12, vertical: -9),
                    hintText: '**************',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                    // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor)
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: MyButton(
                    width: 140,
                    btnColor: Theme
                        .of(context)
                        .primaryColor,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const CompanyRegistrationTwoScreen(),));
                      // context.go(AppRouteConstants.dashBoardScreen);
                    },
                    title: AppTranslations.of(context).next,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
