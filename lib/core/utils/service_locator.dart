import 'package:bookly/features/home/data/repos/home_repo_impelement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpelement>(
    HomeRepoImpelement(
      getIt.get<ApiService>()
    ),
  );
}
