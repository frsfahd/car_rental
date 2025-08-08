import 'package:car_rental/model/car_details.dart';
import 'package:flutter/material.dart';

class Brandsfilter extends StatefulWidget {
  final void Function({required Set<String> brands}) filterBrands;
  const Brandsfilter({super.key, required this.filterBrands});

  @override
  State<Brandsfilter> createState() => _BrandsfilterState();
}

class _BrandsfilterState extends State<Brandsfilter> {
  final List<carBrands> brands = carBrands.values;
  Set<String> selectedBrands = {};

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: brands.map((brand) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: FilterChip(
                selected: selectedBrands.contains(brand.name),
                label: Text(brand.name, overflow: TextOverflow.visible),
                visualDensity: VisualDensity.comfortable,
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      selectedBrands.add(brand.name);
                    } else {
                      selectedBrands.remove(brand.name);
                    }
                    widget.filterBrands(brands: selectedBrands);
                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}


