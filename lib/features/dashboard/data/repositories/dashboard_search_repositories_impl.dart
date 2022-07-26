import 'package:digital_application/core/error/exceptions.dart';
import 'package:digital_application/core/network/network_info.dart';
import 'package:digital_application/features/dashboard/data/datasources/dashboard_search_datasources.dart';
import 'package:digital_application/features/dashboard/domain/entities/dashboard_search_entity.dart';
import 'package:digital_application/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:digital_application/features/dashboard/domain/repositories/dashboard_repository.dart';

class DashboardSearchRepositoriesImpl extends DashboardRepository {
  final DashboardSearchDataSource dataSource;
  final NetworkInfo networkInfo;

  DashboardSearchRepositoriesImpl({
    required this.dataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, DashboardSearchEntity>> getSearchDetails(
      String serachKey) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await dataSource.getSearchData(serachKey);
        return Right(remoteData);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(InternetFailure());
    }
  }
}
