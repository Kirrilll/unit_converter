import 'package:converter/entities/unit/domain/unit_category.dart';
import 'package:converter/entities/unit/domain/unit_category_helper.dart';
import 'package:converter/widgets/appbar_with_localization.dart';
import 'package:converter/widgets/convert_from_item.dart';
import 'package:converter/widgets/convert_to_item.dart';
import 'package:flutter/material.dart';

class ConvertPage extends StatelessWidget {
  const ConvertPage({
    Key? key,
    required this.categoryId
  }) : super(key: key);

  final int categoryId;

  UnitCategory get currCategory => getCategoryById(categoryId);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appBarWithLocalization,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currCategory.titleBuilder(context),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(flex: 2,),
            const ConvertFromItem(),
            const Spacer(flex: 4),
            const ConvertToItem(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
