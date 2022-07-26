import 'package:digital_application/core/api_client/api_client.dart';
import 'package:digital_application/core/network/network_info.dart';
import 'package:digital_application/features/dashboard/data/datasources/dashboard_search_datasources.dart';
import 'package:digital_application/features/dashboard/data/repositories/dashboard_search_repositories_impl.dart';
import 'package:digital_application/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:digital_application/features/dashboard/domain/usecases/dashboard_search_usecase.dart';
import 'package:digital_application/features/dashboard/presentation/bloc/dashboard_search_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

void init() async {
  authenticateUser();

  //!----Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //!----External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));
}

void authenticateUser() {
  // sl() or sl.call() -> get it instance is Callabale class starts looking for all the registered types
  // mobileValidator is of type MobileValidator, it will resolve this and instantiate it for us
  //bloc
  sl.registerFactory(() => DashboardSearchBloc(dashboardUseCase: sl()));

  // Use cases - don't have anything to clean or change of state, so we can register as singleton
  sl.registerLazySingleton(() => DashboardSearchUseCase(sl()));

  sl.registerLazySingleton<DashboardRepository>(() =>
      DashboardSearchRepositoriesImpl(dataSource: sl(), networkInfo: sl()));

  sl.registerLazySingleton<DashboardSearchDataSource>(
      () => DashboardSearchDataSourceImpl(client: sl()));
}
