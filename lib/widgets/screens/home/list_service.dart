import 'package:flutter/material.dart';
import 'package:mobi_med/widgets/screens/services/item_service.dart';

class ListService extends StatelessWidget {
  const ListService({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const ItemSevice();
        },
      ),
    );
  }
}
