import 'package:car_rental/model/car_details.dart';
import 'package:car_rental/model/car_search_service.dart';
import 'package:car_rental/components/bookmarkBtn.dart';
import 'package:car_rental/pages/Details/details.dart';
import 'package:flutter/material.dart';

class Vehiclelist extends StatelessWidget {
  final Set<String> brands;
  final String models;
  const Vehiclelist({super.key, required this.brands, required this.models});

  @override
  Widget build(BuildContext context) {
    List<CarDetails> filteredCars;

    // filter by model query
    filteredCars = CarSearchService.searchModels(models, carList);

    // filter by brands query
    filteredCars = CarSearchService.searchBrands(brands, filteredCars);

    return ListView.builder(
      itemCount: filteredCars.length,
      itemBuilder: (context, index) {
        final CarDetails car = filteredCars[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details(car: car)),
            );
          },
          child: VehicleItem(car: car),
        );
      },
    );
  }
}

class VehicleGrid extends StatelessWidget {
  final Set<String> brands;
  final String models;
  const VehicleGrid({super.key, required this.brands, required this.models});

  @override
  Widget build(BuildContext context) {
    List<CarDetails> filteredCars;

    // filter by model query
    filteredCars = CarSearchService.searchModels(models, carList);

    // filter by brands query
    filteredCars = CarSearchService.searchBrands(brands, filteredCars);
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: filteredCars
          .map(
            (car) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Details(car: car)),
                );
              },
              child: VehicleItem(car: car),
            ),
          )
          .toList(),
    );
  }
}

class VehicleItem extends StatelessWidget {
  final CarDetails car;
  const VehicleItem({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // thumbnail image
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.network(
                      car.img_url,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "\$${car.price}/day",
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),

                        BookmarkBtn(
                          backGroundColor: Colors.white,
                          foreGroundColor: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // short description
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${car.name} (${car.modelYear})",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Mileage: ${car.mileage} km",
                    style: TextStyle(color: Colors.grey[600]),
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
