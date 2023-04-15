import 'package:converter/app/colors.dart';
import 'package:converter/entities/unit/domain/unit_category.dart';
import 'package:converter/shared/constants.dart';
import 'package:flutter/material.dart';

class CategoryAvatar extends StatelessWidget {
  const CategoryAvatar({Key? key, required this.category, required this.onClick}) : super(key: key);

  final UnitCategory category;
  final void Function() onClick;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(defaultRadius),
          color: lightGray,
          boxShadow: [defaultShadow]
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(category.titleBuilder(context)),
            const SizedBox(height: 5),
            const Icon(Icons.leaderboard_rounded)
          ],
        ),
      ),

    );
  }
}
