part of 'dashboard_search_bloc.dart';

abstract class DashboardSearchState extends Equatable {
  const DashboardSearchState();

  @override
  List<Object> get props => [];
}

class DashboardSearchStateInitial extends DashboardSearchState {}

class LoadingState extends DashboardSearchState {}

class DashboardSearchDeatilsState extends DashboardSearchState {
  final DashboardSearchEntity dashboardSearchEntity;

  DashboardSearchDeatilsState({required this.dashboardSearchEntity});

  @override
  List<Object> get props => [];
}

class ErrorState extends DashboardSearchState {
  final String message;

  ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
