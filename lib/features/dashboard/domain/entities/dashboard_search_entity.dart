import 'package:digital_application/features/dashboard/data/models/events.dart';
import 'package:digital_application/features/dashboard/data/models/meta.dart';
import 'package:equatable/equatable.dart';

class DashboardSearchEntity extends Equatable  {
  List<Events>? events;
  Meta? meta;


  DashboardSearchEntity(
      {required this.events, required this.meta});

  @override
  List<Object?> get props => [this.events, this.meta];

  @override
  bool? get stringify => true;
}