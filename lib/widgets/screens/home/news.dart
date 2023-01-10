import 'package:flutter/material.dart';

import '../news/item_news.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const ItemNews();
        },
      ),
    );
  }
}
