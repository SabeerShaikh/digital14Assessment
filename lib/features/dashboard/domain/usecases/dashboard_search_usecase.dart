import 'package:dartz/dartz.dart';
import 'package:digital_application/core/error/failures.dart';
import 'package:digital_application/core/usecases/usecase.dart';
import 'package:digital_application/features/dashboard/domain/entities/dashboard_search_entity.dart';
import 'package:digital_application/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:equatable/equatable.dart';

class DashboardSearchUseCase
    implements UseCase<DashboardSearchEntity, DashboardSearchParams> {
  final DashboardRepository dashboardRepository;

  DashboardSearchUseCase(this.dashboardRepository);

  @override
  Future<Either<Failure, DashboardSearchEntity>> call(
      DashboardSearchParams params) async {
    return await dashboardRepository.getSearchDetails(params.searchKey);
  }
}

class DashboardSearchParams extends Equatable {
  final String searchKey;

  DashboardSearchParams({required this.searchKey});

  @override
  List<Object?> get props => [searchKey];
}
