import 'package:car_rental/components/bookmarkBtn.dart';
import 'package:car_rental/model/car_details.dart';
import 'package:flutter/material.dart';

class CarinfoHeader extends StatelessWidget {
  final CarDetails car;
  const CarinfoHeader({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      // constraints: BoxConstraints(maxHeight: 100),
      child: Center(
        child: ListTile(
          minTileHeight: 90,
          title: Text(
            "${car.name} (${car.modelYear})",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Colors.amberAccent),
                Text(
                  "4.6",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "(50+ Reviews)",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          trailing: BookmarkBtn(
            backGroundColor: Theme.of(context).primaryColor,
            foreGroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
