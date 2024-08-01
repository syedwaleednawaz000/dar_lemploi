import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_code_structure/Presentation/routes/app_route_configs.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter.getLocalData();
    Timer(const Duration(seconds: 2), () {
      // context.go('${AppRouter.currentScreen}');
      context.push(AppRouteConstants.selectionScreen);
    });
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Image.asset('assets/Images/bg_logo.png')],
        ),
      ),
    );
  }
}
