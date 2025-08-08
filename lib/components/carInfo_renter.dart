import 'package:car_rental/components/callBtn.dart';
import 'package:car_rental/components/chatBtn.dart';
import 'package:flutter/material.dart';

class CarinfoRenter extends StatelessWidget {
  const CarinfoRenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      // constraints: BoxConstraints(maxHeight: 100),
      child: Center(
        child: ListTile(
          minTileHeight: 90,
          horizontalTitleGap: 20,
          leading: CircleAvatar(child: Icon(Icons.person_sharp)),
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Donald Bin Salman",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4), // Add space between title and subtitle
                Text(
                  "Renter",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          trailing: Container(
            constraints: BoxConstraints(maxWidth: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CallBtn(
                  backGroundColor: Theme.of(context).primaryColor,
                  foreGroundColor: Colors.white,
                ),

                ChatBtn(
                  backGroundColor: Theme.of(context).primaryColor,
                  foreGroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
