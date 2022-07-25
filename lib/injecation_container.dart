import 'package:digital_application/core/api_client/api_client.dart';
import 'package:digital_application/core/network/network_info.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

void init() async {
 

  //!----Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));


  //!----External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));
}
