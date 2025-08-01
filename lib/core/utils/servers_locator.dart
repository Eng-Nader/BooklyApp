import 'package:bookly_app/Feature/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/Feature/search/data/repos/search_repo_implement.dart';
import 'package:bookly_app/core/utils/api_servers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setUp() {
  getit.registerSingleton<ApiServers>(
    ApiServers(
      Dio(),
    ),
  );

  getit.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      getit.get<ApiServers>(),
    ),
  );

  getit.registerSingleton<SearchRepoImplement>(
    SearchRepoImplement(getit.get<ApiServers>()),
  );
}
