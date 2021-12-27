import 'package:flutter/material.dart';
import 'package:flutter_currency_converter/app/views/home_view.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/widgets/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColorLight: AppColors.primaryColor,
          bottomAppBarColor: const Color(0xFFDADCE2),
      ),    
      routes: {
        AppRoutes.home: (context) => const HomeView(),
      },
      initialRoute: AppRoutes.home,
    );
  }
}
