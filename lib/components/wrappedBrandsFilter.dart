import 'package:car_rental/model/car_details.dart';
import 'package:flutter/material.dart';

class WrappedBrandsFilter extends StatefulWidget {
  final void Function({required Set<String> brands}) filterBrands;
  const WrappedBrandsFilter({super.key, required this.filterBrands});

  @override
  State<WrappedBrandsFilter> createState() => _WrappedBrandsFilterState();
}

class _WrappedBrandsFilterState extends State<WrappedBrandsFilter> {
  final List<carBrands> brands = carBrands.values;
  Set<String> selectedBrands = {};

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: brands
            .map(
              (brand) => FilterChip(
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
            )
            .toList(),
      ),
    );
  }
}
