import 'package:dartz/dartz.dart';
import 'package:digital_application/core/error/failures.dart';
import 'package:digital_application/features/dashboard/domain/entities/dashboard_search_entity.dart';

abstract class DashboardRepository {
  Future<Either<Failure, DashboardSearchEntity>> getSearchDetails(
      String serachKey);
}
