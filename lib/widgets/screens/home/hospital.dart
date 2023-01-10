import 'package:flutter/material.dart';
import 'package:mobi_med/widgets/screens/hospital/item_hospital.dart';

class Hospital extends StatelessWidget {
  const Hospital({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const ItemHospital();
        },
      ),
    );
  }
}
