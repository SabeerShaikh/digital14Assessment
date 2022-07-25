import 'package:digital_application/features/dashboard/data/models/events.dart';
import 'package:digital_application/features/dashboard/data/models/meta.dart';
import 'package:digital_application/features/dashboard/domain/entities/dashboard_search_entity.dart';

class DashboardSearchModel extends DashboardSearchEntity {
  List<Events>? events;
  Meta? meta;

  // DashboardSearchModel({this.events, this.meta});

  DashboardSearchModel({
    this.events,
    this.meta,
  }) : super(events: events, meta: meta);

  factory DashboardSearchModel.fromJson(dynamic json) {
    return DashboardSearchModel(
      events: _entity(json),
      meta: json["meta"] != null ? Meta.fromJson(json["meta"]) : null,
    );
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    if (events != null) {
      map["events"] = events?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

_entity(Map<String, dynamic> json) {
  var entity = List<Events>.empty(growable: true);

  if (json["events"] != null) {
    json["events"].forEach((v) {
      entity.add(Events.fromJson(v));
    });
    return entity;
  }
  return entity;
}
