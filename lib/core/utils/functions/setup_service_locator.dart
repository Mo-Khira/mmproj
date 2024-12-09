import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mmproj/core/utils/api_service.dart';
import 'package:mmproj/features/home/data/data_sources/home_local_data_source.dart';
import 'package:mmproj/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:mmproj/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
