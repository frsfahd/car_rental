// ignore_for_file: slash_for_doc_comments

import 'package:car_rental/components/callBtn.dart';
import 'package:car_rental/components/carInfo_header.dart';
import 'package:car_rental/components/carInfo_overview.dart';
import 'package:car_rental/components/carInfo_renter.dart';
import 'package:car_rental/components/carInfo_specs.dart';
import 'package:car_rental/components/chatBtn.dart';
import 'package:car_rental/model/car_details.dart';
import 'package:car_rental/components/bookmarkBtn.dart';
import 'package:flutter/material.dart';

/******************** Small Screen View ********************/

class DetailsViewMobile extends StatelessWidget {
  final CarDetails car;

  const DetailsViewMobile({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            // car image
            Container(
              constraints: BoxConstraints(maxHeight: 900),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(
                  car.img_url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),

            // car title, ratings, and bookmark btn
            CarinfoHeader(car: car),

            // Divider(color: Colors.grey.shade300, height: 0),

            // car renter info
            CarinfoRenter(),

            // Divider(color: Colors.grey.shade300, height: 20),

            // car info title
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Car Info",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),

            // car info overview
            CarinfoOverview(car: car),

            // car technical specs title
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Car Specs",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),

            // car technical specifications
            CarInfoSpecs(car: car),

            // booking button
            // Padding(
            //   padding: EdgeInsets.only(top: 30),
            //   child: SizedBox(
            //     width: double.infinity,
            //     height: 48,
            //     child: FilledButton(
            //       style: FilledButton.styleFrom(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(12),
            //         ),
            //       ),
            //       onPressed: () {},
            //       child: const Text("Book Now"),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

/******************** Large Screen View ********************/

class DetailsViewWeb extends StatelessWidget {
  final CarDetails car;

  const DetailsViewWeb({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          children: [
            // left section (image)
            Expanded(
              child: // car image
              Container(
                constraints: BoxConstraints(maxHeight: 900),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.network(
                    car.img_url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),

            SizedBox(width: 50),

            // right section
            Expanded(
              child: Column(
                children: [
                  // car title, ratings, and bookmark btn
                  CarinfoHeader(car: car),

                  // Divider(color: Colors.grey.shade300, height: 0),

                  // car renter info
                  CarinfoRenter(),

                  // Divider(color: Colors.grey.shade300, height: 20),

                  // car info title
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Car Info",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // car info overview
                  CarinfoOverview(car: car),

                  // car technical specs title
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Car Specs",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // car technical specifications
                  CarInfoSpecs(car: car),

                  // booking button
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Book Now"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
