part of 'dashboard_search_bloc.dart';

abstract class DashboardSearchEvent extends Equatable {
  const DashboardSearchEvent();

  @override
  List<Object> get props => [];
}

class DashboardSearchIntiateEvent extends DashboardSearchEvent {
  final String strKey;

  DashboardSearchIntiateEvent(this.strKey);

  @override
  List<Object> get props => [strKey];
}
