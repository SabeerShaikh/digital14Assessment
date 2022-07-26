import 'package:digital_application/features/dashboard/data/models/events.dart';
import 'package:digital_application/features/dashboard/data/models/meta.dart';
import 'package:digital_application/features/dashboard/domain/entities/dashboard_search_entity.dart';

class DashboardSearchModel extends DashboardSearchEntity {
  List<Events>? eventList;
  Meta? metaList;
  DashboardSearchModel({
    this.eventList,
    this.metaList,
  }) : super(events: eventList, meta: metaList);

  factory DashboardSearchModel.fromJson(dynamic json) {
    return DashboardSearchModel(
      eventList: json["events"] == null
          ? null
          : (json["events"] as List).map((e) => Events.fromJson(e)).toList(),
      metaList: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.eventList != null)
      data["events"] = this.eventList!.map((e) => e.toJson()).toList();
    if (this.metaList != null) data["meta"] = this.metaList!.toJson();
    return data;
  }
}
