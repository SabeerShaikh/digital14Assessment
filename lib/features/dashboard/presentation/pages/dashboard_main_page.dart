import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:digital_application/core/constants/color_constants.dart';
import 'package:digital_application/core/util/date_formate.dart';
import 'package:digital_application/features/dashboard/data/models/events.dart';
import 'package:digital_application/features/dashboard/presentation/bloc/dashboard_search_bloc.dart';
import 'package:digital_application/features/dashboard/presentation/pages/dashboard_details_page.dart';
import 'package:digital_application/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DashboardMainPage extends StatefulWidget {
  const DashboardMainPage({Key? key}) : super(key: key);

  @override
  _DashboardMainPageState createState() => _DashboardMainPageState();
}

class _DashboardMainPageState extends State<DashboardMainPage> {
  Widget appBarTitle = const Text(
    "Search Here",
    style: TextStyle(color: COLOR_WHITE),
  );
  Icon actionIcon = const Icon(
    Icons.search,
    color: COLOR_WHITE,
  );
  final TextEditingController _searchQuery = TextEditingController();
  bool _IsSearching = false;
  String _searchText = "";
  List<Events>? events;
  BuildContext? buildContext;
  final _debouncer = Debouncer();
  late DashboardSearchBloc _dashboardSearchBloc;

  @override
  void initState() {
    super.initState();
  }

  _DashboardMainPageState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(centerTitle: true,
        backgroundColor: COLOR_PRIMARY,
        shadowColor: COLOR_WHITE,
         title: appBarTitle, 
         actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(
                () {
                  if (actionIcon.icon == Icons.search) {
                    actionIcon = const Icon(
                      Icons.close,
                      color: COLOR_WHITE,
                    );
                    appBarTitle = TextField(
                      controller: _searchQuery,
                      style: const TextStyle(
                        color: COLOR_WHITE,
                      ),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search, color: COLOR_WHITE),
                          hintText: "Search...",
                          hintStyle: TextStyle(color: COLOR_WHITE)),
                      onChanged: (string) {
                        _debouncer.run(() {
                          setState(() {
                            if (string != "") {
                              _dashboardSearchBloc
                                  .add(DashboardSearchIntiateEvent(string));
                            }
                          });
                        });
                      },
                    );
                    _handleSearchStart();
                  } else {
                    _handleSearchEnd();
                  }
                },
              );
            },
          ),
        ]),
        body: buildBody(context),
      ),
    );
  }

  BlocProvider<DashboardSearchBloc> buildBody(BuildContext context) {
    buildContext = context;

    return BlocProvider<DashboardSearchBloc>(
      create: (context) => sl<DashboardSearchBloc>(),
      child: BlocListener<DashboardSearchBloc, DashboardSearchState>(
        listener: (context, state) {},
        child: BlocBuilder<DashboardSearchBloc, DashboardSearchState>(
            builder: (context, state) {
          if (state is DashboardSearchStateInitial) {
            _dashboardSearchBloc =
                BlocProvider.of<DashboardSearchBloc>(context);
          }
          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is DashboardSearchDeatilsState) {
            events = state.dashboardSearchEntity.events;
            if (state.dashboardSearchEntity.events!.length > 0) {
              return _showData();
            } else {
              return Container(child: _noDataShowWidget());
            }
          }
          return Container(child: _noDataShowWidget());
        }),
      ),
    );
  }

  Widget _showData() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: events!.length,
      itemBuilder: (BuildContext context, int index) {
        return ChildItem(events![index]);
      },
    );
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      actionIcon = const Icon(
        Icons.search,
        color: COLOR_WHITE,
      );
      appBarTitle = const Text(
        "Search Here",
        style: TextStyle(color: COLOR_WHITE),
      );
      _IsSearching = false;
      if (events!.length > 0) {
        events!.clear();
      }
      _searchQuery.clear();
    });
  }
}

Widget _noDataShowWidget() {
  return Container(
    alignment: Alignment.center,
    child: const Center(
      child: Text("OOPS! no data available search other city or country!!"),
    ),
  );
}

class ChildItem extends StatelessWidget {
  final Events event;
  ChildItem(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DashboardDetailsPage(
                        events: event,
                      )),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.only(left: 12, bottom: 12),
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  imageUrl: event.performers!.first.image!,
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12, left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        event.title!.trim(),
                        style: TextStyle(
                            fontSize: 14,
                            color: COLOR_BLACK,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, left: 10),
                      alignment: Alignment.topLeft,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          event.venue!.displayLocation!.trim(),
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.left,
                          softWrap: false,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, left: 10),
                      alignment: Alignment.topLeft,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          DateFormater.dateConversion(
                              event.datetimeUtc!.trim()),
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.left,
                          softWrap: false,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Debouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}
