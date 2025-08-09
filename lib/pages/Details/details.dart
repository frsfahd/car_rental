import 'package:car_rental/components/bookBtn.dart';
import 'package:car_rental/model/car_details.dart';
import 'package:car_rental/pages/Details/details_view.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final CarDetails car;
  const Details({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 700) {
          return Scaffold(
            body: DetailsViewMobile(car: car),

            bottomNavigationBar: const Bookbtn(),
          );
        }
        return Scaffold(body: DetailsViewWeb(car: car));
      },
    );
  }
}
