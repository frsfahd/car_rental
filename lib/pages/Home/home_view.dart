// ignore_for_file: slash_for_doc_comments

import 'package:car_rental/components/header_section.dart';
import 'package:car_rental/components/brandsFilter.dart';
import 'package:car_rental/components/vehicleList.dart';
import 'package:car_rental/components/wrappedBrandsFilter.dart';
import 'package:flutter/material.dart';

/******************** Small Screen View ********************/

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key});

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  Set<String> selectedBrands = {};
  String selectedModels = "";

  void filterVehicleListByBrands({required Set<String> brands}) {
    setState(() {
      selectedBrands = brands;
    });
  }

  void filterVehicleListByModels({required String models}) {
    setState(() {
      selectedModels = models;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header section
            HeaderSection(filterModels: filterVehicleListByModels),

            // brands filter title
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "search for brands",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),

            // brands filter
            Padding(
              padding: EdgeInsetsGeometry.only(top: 20),
              child: Brandsfilter(filterBrands: filterVehicleListByBrands),
            ),

            // vehicle list title
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Text(
                "available cars for rents",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),

            // vehicle list section
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Vehiclelist(
                  brands: selectedBrands,
                  models: selectedModels,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/******************** Large Screen View ********************/

class HomeViewWeb extends StatefulWidget {
  const HomeViewWeb({super.key});

  @override
  State<HomeViewWeb> createState() => _HomeViewWebState();
}

class _HomeViewWebState extends State<HomeViewWeb> {
  Set<String> selectedBrands = {};
  String selectedModels = "";

  void filterVehicleListByBrands({required Set<String> brands}) {
    setState(() {
      selectedBrands = brands;
    });
  }

  void filterVehicleListByModels({required String models}) {
    setState(() {
      selectedModels = models;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            HeaderSection(filterModels: filterVehicleListByModels),

            Expanded(
              child: Row(
                children: [
                  // left column
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // header section
                        // HeaderSection(filterModels: filterVehicleListByModels),
                        // brands filter title
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Text(
                            "search for brands",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),

                        // brands filter
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 20),
                          child: WrappedBrandsFilter(
                            filterBrands: filterVehicleListByBrands,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // right column
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // vehicle list title
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Text(
                            "available cars for rents",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),

                        // vehicle list section
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: VehicleGrid(
                              brands: selectedBrands,
                              models: selectedModels,
                            ),
                          ),
                        ),
                      ],
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
