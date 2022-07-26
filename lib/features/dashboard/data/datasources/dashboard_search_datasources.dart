import 'dart:convert';

import 'package:digital_application/core/api_client/api_client.dart';
import 'package:digital_application/core/api_client/api_constant.dart';
import 'package:digital_application/features/dashboard/data/models/dashboard_search_model.dart';
import 'package:http/http.dart' as http;

abstract class DashboardSearchDataSource {
  Future<DashboardSearchModel> getSearchData(String searchKey);
}

class DashboardSearchDataSourceImpl implements DashboardSearchDataSource {
  final ApiClient client;
  final clinetId = "Mjc5ODcxMTF8MTY1ODQ5MjkxMC4zODczNTg0";

  DashboardSearchDataSourceImpl({
    required this.client,
  });

  @override
  Future<DashboardSearchModel> getSearchData(String searchKey) async {
    String appBasesUrl = "https://api.seatgeek.com/";
    await Future.delayed(Duration(milliseconds: 500));

    final response = await client.get(
      ApiConstants.URL_GET_EVENTS + clinetId + "&q=" + searchKey,
    );

    print(
        "searchKey --- ${appBasesUrl + ApiConstants.URL_GET_EVENTS + clinetId + "&q=" + searchKey}");

    final dashboardSearchModel = DashboardSearchModel.fromJson(response);
    //  print(dashboardSearchModel.events.toString());

    if (dashboardSearchModel.events != null) {
      if (dashboardSearchModel.events!.length > 0) {
        return dashboardSearchModel;
      }
    }
    return dashboardSearchModel;
  }
}
