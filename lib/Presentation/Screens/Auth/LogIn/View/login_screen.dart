import 'package:flutter/material.dart';
import 'package:flutter_code_structure/Presentation/Widget/my_button.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import '../../../../Widget/custom_bg.dart';
import '../../../UserHomeScreen/user_home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.push(AppRouteConstants.selectionScreen);
        return true;
      },
      child: CustomBackGround(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Image.asset('assets/Images/name_logo.png',width: 400,height: 120),
            const SizedBox(height: 50),
            const Text('Identifier:',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 24)),
            const SizedBox(height: 5),
             TextFormField(
               textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: 'Kaddour-Boumedous@gmail.com',
                hintStyle: const TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor)
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            const Text('Password:',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 24)),
            const SizedBox(height: 5),
            TextFormField(
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: '**************',
                hintStyle: const TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
                // labelStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor)
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            MyButton(
              btnColor: Theme.of(context).hintColor,
              onTap: () {
                // Provider.of<StripeProvider>(context,listen: false).makePayment(bookingID: "45678", requestType: "fghj", price: 56, context: context);
                // context.go(AppRouteConstants.dashBoardScreen);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UserHomeScreen()));
              },
              title: 'Login',
            ),
            const SizedBox(height: 12.0),
            Text('or',style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w700,fontSize: 20)),
            const SizedBox(height: 12.0),
            MyButton(
              btnColor: Theme.of(context).hintColor,
              onTap: () {
                // context.go(AppRouteConstants.dashBoardScreen);
              },
              title: 'Connect vai:',
              image: Image.asset('assets/Images/google.png', height: 30),
            ),
          ],
        ),
      )),
    );
  }
}
