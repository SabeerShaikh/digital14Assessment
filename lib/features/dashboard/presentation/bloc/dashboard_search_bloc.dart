import 'package:digital_application/core/constants/string_contants.dart';
import 'package:digital_application/core/error/failures.dart';
import 'package:digital_application/features/dashboard/domain/entities/dashboard_search_entity.dart';
import 'package:digital_application/features/dashboard/domain/usecases/dashboard_search_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dasboard_search_states.dart';

part 'dashboard_search_events.dart';

class DashboardSearchBloc
    extends Bloc<DashboardSearchEvent, DashboardSearchState> {
  final DashboardSearchUseCase dashboardUseCase;

  DashboardSearchBloc({required this.dashboardUseCase})
      : super(DashboardSearchStateInitial());

  DashboardSearchState get initialState => DashboardSearchStateInitial();
  @override
  Stream<DashboardSearchState> mapEventToState(
      DashboardSearchEvent event) async* {
    if (event is DashboardSearchIntiateEvent) {
      yield LoadingState();
      final result = await dashboardUseCase(DashboardSearchParams(
        searchKey: event.strKey,
      ));

      yield result.fold(
          (failure) => ErrorState(message: _mapFailureToMessage(failure)),
          (dashboardEntity) => DashboardSearchDeatilsState(
              dashboardSearchEntity: dashboardEntity));
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return STRING_SERVER_FAILURE_MESSAGE;
      default:
        return STRING_GENERAL_UNEXPECCTED_ERROR;
    }
  }
}
