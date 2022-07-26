import 'package:cached_network_image/cached_network_image.dart';
import 'package:digital_application/features/dashboard/data/models/events.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:digital_application/core/util/date_formate.dart';

class DashboardDetailsPage extends StatefulWidget {
  final Events events;
  const DashboardDetailsPage({Key? key, required this.events})
      : super(key: key);

  @override
  _DashboardDetailsPageState createState() => _DashboardDetailsPageState();
}

class _DashboardDetailsPageState extends State<DashboardDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.events.title!,
              softWrap: false,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        body: showDetailsPage(),
      ),
    );
  }

  Widget showDetailsPage() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: CachedNetworkImage(
              imageUrl: widget.events.performers!.first.image!,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child:
                    CircularProgressIndicator(value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 8, left: 16),
                alignment: Alignment.topLeft,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    DateFormater.dateConversion(widget.events.datetimeUtc!.trim()),
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                    softWrap: false,
                    maxLines: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: 16),
                alignment: Alignment.topLeft,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.events.venue!.displayLocation!.trim(),
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.left,
                    softWrap: false,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
