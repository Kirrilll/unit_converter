import 'package:converter/entities/unit/domain/unit_category.dart';
import 'package:converter/entities/unit/lib/units_config.dart';

List<UnitCategory>  getAllCategories() => unitsConfig;

UnitCategory getCategoryById(int id) => getAllCategories().firstWhere((category) => category.id == id);