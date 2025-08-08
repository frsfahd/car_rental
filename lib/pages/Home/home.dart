import 'package:car_rental/pages/Home/home_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 700) {
          return Scaffold(body: HomeViewMobile());
        }
        return Scaffold(body: HomeViewWeb());
      },
    );
  }
}
