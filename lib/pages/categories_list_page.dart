import 'package:converter/app/colors.dart';
import 'package:converter/entities/unit/domain/unit_category_helper.dart';
import 'package:converter/entities/unit/ui/category_avatar.dart';
import 'package:converter/widgets/appbar_with_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoriesListPage extends StatelessWidget {
  const CategoriesListPage({Key? key}) : super(key: key);

  static final _categories = getAllCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWithLocalization,
        backgroundColor: gray,
        body: GridView.custom(
          primary: false,
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => CategoryAvatar(
                  category: _categories[index],
                  onClick: () => GoRouter.of(context).push('/category/$index')
              ),
              childCount: _categories.length
          ),
        ));
  }
}
