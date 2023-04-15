import 'package:converter/features/convert/domain/convert_model.dart';
import 'package:get_it/get_it.dart';

import '../processes/localization/localization_model.dart';

final GetIt locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton(() => LocalizationModel());
  locator.registerLazySingleton(() => ConvertModel());
}