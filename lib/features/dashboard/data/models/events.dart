
class Events {
  String? type;
  int? id;
  String? datetimeUtc;
  Venue? venue;
  bool? datetimeTbd;
  List<Performers>? performers;
  bool? isOpen;
  List<dynamic>? links;
  String? datetimeLocal;
  bool? timeTbd;
  String? shortTitle;
  String? visibleUntilUtc;
  Stats1? stats;
  List<Taxonomies1>? taxonomies;
  String? url;
  double? score;
  String? announceDate;
  String? createdAt;
  bool? dateTbd;
  String? title;
  double? popularity;
  String? description;
  String? status;
  AccessMethod1? accessMethod;
  dynamic eventPromotion;
  Announcements? announcements;
  bool? conditional;
  dynamic enddatetimeUtc;
  List<dynamic>? themes;
  List<dynamic>? domainInformation;

  Events({this.type, this.id, this.datetimeUtc, this.venue, this.datetimeTbd, this.performers, this.isOpen, this.links, this.datetimeLocal, this.timeTbd, this.shortTitle, this.visibleUntilUtc, this.stats, this.taxonomies, this.url, this.score, this.announceDate, this.createdAt, this.dateTbd, this.title, this.popularity, this.description, this.status, this.accessMethod, this.eventPromotion, this.announcements, this.conditional, this.enddatetimeUtc, this.themes, this.domainInformation});

  Events.fromJson(Map<String, dynamic> json) {
    if(json["type"] is String)
      this.type = json["type"];
    if(json["id"] is int)
      this.id = json["id"];
    if(json["datetime_utc"] is String)
      this.datetimeUtc = json["datetime_utc"];
    if(json["venue"] is Map)
      this.venue = json["venue"] == null ? null : Venue.fromJson(json["venue"]);
    if(json["datetime_tbd"] is bool)
      this.datetimeTbd = json["datetime_tbd"];
    if(json["performers"] is List)
      this.performers = json["performers"]==null ? null : (json["performers"] as List).map((e)=>Performers.fromJson(e)).toList();
    if(json["is_open"] is bool)
      this.isOpen = json["is_open"];
    if(json["links"] is List)
      this.links = json["links"] ?? [];
    if(json["datetime_local"] is String)
      this.datetimeLocal = json["datetime_local"];
    if(json["time_tbd"] is bool)
      this.timeTbd = json["time_tbd"];
    if(json["short_title"] is String)
      this.shortTitle = json["short_title"];
    if(json["visible_until_utc"] is String)
      this.visibleUntilUtc = json["visible_until_utc"];
    if(json["stats"] is Map)
      this.stats = json["stats"] == null ? null : Stats1.fromJson(json["stats"]);
    if(json["taxonomies"] is List)
      this.taxonomies = json["taxonomies"]==null ? null : (json["taxonomies"] as List).map((e)=>Taxonomies1.fromJson(e)).toList();
    if(json["url"] is String)
      this.url = json["url"];
    if(json["score"] is double)
      this.score = json["score"];
    if(json["announce_date"] is String)
      this.announceDate = json["announce_date"];
    if(json["created_at"] is String)
      this.createdAt = json["created_at"];
    if(json["date_tbd"] is bool)
      this.dateTbd = json["date_tbd"];
    if(json["title"] is String)
      this.title = json["title"];
    if(json["popularity"] is double)
      this.popularity = json["popularity"];
    if(json["description"] is String)
      this.description = json["description"];
    if(json["status"] is String)
      this.status = json["status"];
    if(json["access_method"] is Map)
      this.accessMethod = json["access_method"] == null ? null : AccessMethod1.fromJson(json["access_method"]);
    this.eventPromotion = json["event_promotion"];
    if(json["announcements"] is Map)
      this.announcements = json["announcements"] == null ? null : Announcements.fromJson(json["announcements"]);
    if(json["conditional"] is bool)
      this.conditional = json["conditional"];
    this.enddatetimeUtc = json["enddatetime_utc"];
    if(json["themes"] is List)
      this.themes = json["themes"] ?? [];
    if(json["domain_information"] is List)
      this.domainInformation = json["domain_information"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["type"] = this.type;
    data["id"] = this.id;
    data["datetime_utc"] = this.datetimeUtc;
    if(this.venue != null)
      data["venue"] = this.venue!.toJson();
    data["datetime_tbd"] = this.datetimeTbd;
    if(this.performers != null)
      data["performers"] = this.performers!.map((e)=>e.toJson()).toList();
    data["is_open"] = this.isOpen;
    if(this.links != null)
      data["links"] = this.links;
    data["datetime_local"] = this.datetimeLocal;
    data["time_tbd"] = this.timeTbd;
    data["short_title"] = this.shortTitle;
    data["visible_until_utc"] = this.visibleUntilUtc;
    if(this.stats != null)
      data["stats"] = this.stats!.toJson();
    if(this.taxonomies != null)
      data["taxonomies"] = this.taxonomies!.map((e)=>e.toJson()).toList();
    data["url"] = this.url;
    data["score"] = this.score;
    data["announce_date"] = this.announceDate;
    data["created_at"] = this.createdAt;
    data["date_tbd"] = this.dateTbd;
    data["title"] = this.title;
    data["popularity"] = this.popularity;
    data["description"] = this.description;
    data["status"] = this.status;
    if(this.accessMethod != null)
      data["access_method"] = this.accessMethod!.toJson();
    data["event_promotion"] = this.eventPromotion;
    if(this.announcements != null)
      data["announcements"] = this.announcements!.toJson();
    data["conditional"] = this.conditional;
    data["enddatetime_utc"] = this.enddatetimeUtc;
    if(this.themes != null)
      data["themes"] = this.themes;
    if(this.domainInformation != null)
      data["domain_information"] = this.domainInformation;
    return data;
  }
}

class Announcements {
  Announcements();

  Announcements.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}

class AccessMethod1 {
  String? method;
  String? createdAt;
  bool? employeeOnly;

  AccessMethod1({this.method, this.createdAt, this.employeeOnly});

  AccessMethod1.fromJson(Map<String, dynamic> json) {
    if(json["method"] is String)
      this.method = json["method"];
    if(json["created_at"] is String)
      this.createdAt = json["created_at"];
    if(json["employee_only"] is bool)
      this.employeeOnly = json["employee_only"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["method"] = this.method;
    data["created_at"] = this.createdAt;
    data["employee_only"] = this.employeeOnly;
    return data;
  }
}

class Taxonomies1 {
  int? id;
  String? name;
  dynamic parentId;
  int? rank;

  Taxonomies1({this.id, this.name, this.parentId, this.rank});

  Taxonomies1.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int)
      this.id = json["id"];
    if(json["name"] is String)
      this.name = json["name"];
    this.parentId = json["parent_id"];
    if(json["rank"] is int)
      this.rank = json["rank"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["parent_id"] = this.parentId;
    data["rank"] = this.rank;
    return data;
  }
}

class Stats1 {
  int? listingCount;
  int? averagePrice;
  int? lowestPriceGoodDeals;
  int? lowestPrice;
  int? highestPrice;
  int? visibleListingCount;
  List<int>? dqBucketCounts;
  int? medianPrice;
  int? lowestSgBasePrice;
  int? lowestSgBasePriceGoodDeals;

  Stats1({this.listingCount, this.averagePrice, this.lowestPriceGoodDeals, this.lowestPrice, this.highestPrice, this.visibleListingCount, this.dqBucketCounts, this.medianPrice, this.lowestSgBasePrice, this.lowestSgBasePriceGoodDeals});

  Stats1.fromJson(Map<String, dynamic> json) {
    if(json["listing_count"] is int)
      this.listingCount = json["listing_count"];
    if(json["average_price"] is int)
      this.averagePrice = json["average_price"];
    if(json["lowest_price_good_deals"] is int)
      this.lowestPriceGoodDeals = json["lowest_price_good_deals"];
    if(json["lowest_price"] is int)
      this.lowestPrice = json["lowest_price"];
    if(json["highest_price"] is int)
      this.highestPrice = json["highest_price"];
    if(json["visible_listing_count"] is int)
      this.visibleListingCount = json["visible_listing_count"];
    if(json["dq_bucket_counts"] is List)
      this.dqBucketCounts = json["dq_bucket_counts"]==null ? null : List<int>.from(json["dq_bucket_counts"]);
    if(json["median_price"] is int)
      this.medianPrice = json["median_price"];
    if(json["lowest_sg_base_price"] is int)
      this.lowestSgBasePrice = json["lowest_sg_base_price"];
    if(json["lowest_sg_base_price_good_deals"] is int)
      this.lowestSgBasePriceGoodDeals = json["lowest_sg_base_price_good_deals"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["listing_count"] = this.listingCount;
    data["average_price"] = this.averagePrice;
    data["lowest_price_good_deals"] = this.lowestPriceGoodDeals;
    data["lowest_price"] = this.lowestPrice;
    data["highest_price"] = this.highestPrice;
    data["visible_listing_count"] = this.visibleListingCount;
    if(this.dqBucketCounts != null)
      data["dq_bucket_counts"] = this.dqBucketCounts;
    data["median_price"] = this.medianPrice;
    data["lowest_sg_base_price"] = this.lowestSgBasePrice;
    data["lowest_sg_base_price_good_deals"] = this.lowestSgBasePriceGoodDeals;
    return data;
  }
}

class Performers {
  String? type;
  String? name;
  String? image;
  int? id;
  Images? images;
  List<Divisions>? divisions;
  bool? hasUpcomingEvents;
  bool? primary;
  Stats? stats;
  List<Taxonomies>? taxonomies;
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  int? homeVenueId;
  String? shortName;
  int? numUpcomingEvents;
  Colors? colors;
  String? imageLicense;
  int? popularity;
  bool? homeTeam;
  Location1? location;
  String? imageRightsMessage;

  Performers({this.type, this.name, this.image, this.id, this.images, this.divisions, this.hasUpcomingEvents, this.primary, this.stats, this.taxonomies, this.imageAttribution, this.url, this.score, this.slug, this.homeVenueId, this.shortName, this.numUpcomingEvents, this.colors, this.imageLicense, this.popularity, this.homeTeam, this.location, this.imageRightsMessage});

  Performers.fromJson(Map<String, dynamic> json) {
    if(json["type"] is String)
      this.type = json["type"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["image"] is String)
      this.image = json["image"];
    if(json["id"] is int)
      this.id = json["id"];
    if(json["images"] is Map)
      this.images = json["images"] == null ? null : Images.fromJson(json["images"]);
    if(json["divisions"] is List)
      this.divisions = json["divisions"]==null ? null : (json["divisions"] as List).map((e)=>Divisions.fromJson(e)).toList();
    if(json["has_upcoming_events"] is bool)
      this.hasUpcomingEvents = json["has_upcoming_events"];
    if(json["primary"] is bool)
      this.primary = json["primary"];
    if(json["stats"] is Map)
      this.stats = json["stats"] == null ? null : Stats.fromJson(json["stats"]);
    if(json["taxonomies"] is List)
      this.taxonomies = json["taxonomies"]==null ? null : (json["taxonomies"] as List).map((e)=>Taxonomies.fromJson(e)).toList();
    if(json["image_attribution"] is String)
      this.imageAttribution = json["image_attribution"];
    if(json["url"] is String)
      this.url = json["url"];
    if(json["score"] is double)
      this.score = json["score"];
    if(json["slug"] is String)
      this.slug = json["slug"];
    if(json["home_venue_id"] is int)
      this.homeVenueId = json["home_venue_id"];
    if(json["short_name"] is String)
      this.shortName = json["short_name"];
    if(json["num_upcoming_events"] is int)
      this.numUpcomingEvents = json["num_upcoming_events"];
    if(json["colors"] is Map)
      this.colors = json["colors"] == null ? null : Colors.fromJson(json["colors"]);
    if(json["image_license"] is String)
      this.imageLicense = json["image_license"];
    if(json["popularity"] is int)
      this.popularity = json["popularity"];
    if(json["home_team"] is bool)
      this.homeTeam = json["home_team"];
    if(json["location"] is Map)
      this.location = json["location"] == null ? null : Location1.fromJson(json["location"]);
    if(json["image_rights_message"] is String)
      this.imageRightsMessage = json["image_rights_message"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["type"] = this.type;
    data["name"] = this.name;
    data["image"] = this.image;
    data["id"] = this.id;
    if(this.images != null)
      data["images"] = this.images!.toJson();
    if(this.divisions != null)
      data["divisions"] = this.divisions!.map((e)=>e.toJson()).toList();
    data["has_upcoming_events"] = this.hasUpcomingEvents;
    data["primary"] = this.primary;
    if(this.stats != null)
      data["stats"] = this.stats!.toJson();
    if(this.taxonomies != null)
      data["taxonomies"] = this.taxonomies!.map((e)=>e.toJson()).toList();
    data["image_attribution"] = this.imageAttribution;
    data["url"] = this.url;
    data["score"] = this.score;
    data["slug"] = this.slug;
    data["home_venue_id"] = this.homeVenueId;
    data["short_name"] = this.shortName;
    data["num_upcoming_events"] = this.numUpcomingEvents;
    if(this.colors != null)
      data["colors"] = this.colors!.toJson();
    data["image_license"] = this.imageLicense;
    data["popularity"] = this.popularity;
    data["home_team"] = this.homeTeam;
    if(this.location != null)
      data["location"] = this.location!.toJson();
    data["image_rights_message"] = this.imageRightsMessage;
    return data;
  }
}

class Location1 {
  double? lat;
  double? lon;

  Location1({this.lat, this.lon});

  Location1.fromJson(Map<String, dynamic> json) {
    if(json["lat"] is double)
      this.lat = json["lat"];
    if(json["lon"] is double)
      this.lon = json["lon"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["lat"] = this.lat;
    data["lon"] = this.lon;
    return data;
  }
}

class Colors {
  List<String>? all;
  String? iconic;
  List<String>? primary;

  Colors({this.all, this.iconic, this.primary});

  Colors.fromJson(Map<String, dynamic> json) {
    if(json["all"] is List)
      this.all = json["all"]==null ? null : List<String>.from(json["all"]);
    if(json["iconic"] is String)
      this.iconic = json["iconic"];
    if(json["primary"] is List)
      this.primary = json["primary"]==null ? null : List<String>.from(json["primary"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.all != null)
      data["all"] = this.all;
    data["iconic"] = this.iconic;
    if(this.primary != null)
      data["primary"] = this.primary;
    return data;
  }
}

class Taxonomies {
  int? id;
  String? name;
  dynamic parentId;
  DocumentSource? documentSource;
  int? rank;

  Taxonomies({this.id, this.name, this.parentId, this.documentSource, this.rank});

  Taxonomies.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int)
      this.id = json["id"];
    if(json["name"] is String)
      this.name = json["name"];
    this.parentId = json["parent_id"];
    if(json["document_source"] is Map)
      this.documentSource = json["document_source"] == null ? null : DocumentSource.fromJson(json["document_source"]);
    if(json["rank"] is int)
      this.rank = json["rank"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["parent_id"] = this.parentId;
    if(this.documentSource != null)
      data["document_source"] = this.documentSource!.toJson();
    data["rank"] = this.rank;
    return data;
  }
}

class DocumentSource {
  String? sourceType;
  String? generationType;

  DocumentSource({this.sourceType, this.generationType});

  DocumentSource.fromJson(Map<String, dynamic> json) {
    if(json["source_type"] is String)
      this.sourceType = json["source_type"];
    if(json["generation_type"] is String)
      this.generationType = json["generation_type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["source_type"] = this.sourceType;
    data["generation_type"] = this.generationType;
    return data;
  }
}

class Stats {
  int? eventCount;

  Stats({this.eventCount});

  Stats.fromJson(Map<String, dynamic> json) {
    if(json["event_count"] is int)
      this.eventCount = json["event_count"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["event_count"] = this.eventCount;
    return data;
  }
}

class Divisions {
  int? taxonomyId;
  dynamic shortName;
  String? displayName;
  String? displayType;
  int? divisionLevel;
  dynamic slug;

  Divisions({this.taxonomyId, this.shortName, this.displayName, this.displayType, this.divisionLevel, this.slug});

  Divisions.fromJson(Map<String, dynamic> json) {
    if(json["taxonomy_id"] is int)
      this.taxonomyId = json["taxonomy_id"];
    this.shortName = json["short_name"];
    if(json["display_name"] is String)
      this.displayName = json["display_name"];
    if(json["display_type"] is String)
      this.displayType = json["display_type"];
    if(json["division_level"] is int)
      this.divisionLevel = json["division_level"];
    this.slug = json["slug"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["taxonomy_id"] = this.taxonomyId;
    data["short_name"] = this.shortName;
    data["display_name"] = this.displayName;
    data["display_type"] = this.displayType;
    data["division_level"] = this.divisionLevel;
    data["slug"] = this.slug;
    return data;
  }
}

class Images {
  String? huge;

  Images({this.huge});

  Images.fromJson(Map<String, dynamic> json) {
    if(json["huge"] is String)
      this.huge = json["huge"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["huge"] = this.huge;
    return data;
  }
}

class Venue {
  String? state;
  String? nameV2;
  String? postalCode;
  String? name;
  List<dynamic>? links;
  String? timezone;
  String? url;
  double? score;
  Location? location;
  String? address;
  String? country;
  bool? hasUpcomingEvents;
  int? numUpcomingEvents;
  String? city;
  String? slug;
  String? extendedAddress;
  int? id;
  int? popularity;
  AccessMethod? accessMethod;
  int? metroCode;
  int? capacity;
  String? displayLocation;

  Venue({this.state, this.nameV2, this.postalCode, this.name, this.links, this.timezone, this.url, this.score, this.location, this.address, this.country, this.hasUpcomingEvents, this.numUpcomingEvents, this.city, this.slug, this.extendedAddress, this.id, this.popularity, this.accessMethod, this.metroCode, this.capacity, this.displayLocation});

  Venue.fromJson(Map<String, dynamic> json) {
    if(json["state"] is String)
      this.state = json["state"];
    if(json["name_v2"] is String)
      this.nameV2 = json["name_v2"];
    if(json["postal_code"] is String)
      this.postalCode = json["postal_code"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["links"] is List)
      this.links = json["links"] ?? [];
    if(json["timezone"] is String)
      this.timezone = json["timezone"];
    if(json["url"] is String)
      this.url = json["url"];
    if(json["score"] is double)
      this.score = json["score"];
    if(json["location"] is Map)
      this.location = json["location"] == null ? null : Location.fromJson(json["location"]);
    if(json["address"] is String)
      this.address = json["address"];
    if(json["country"] is String)
      this.country = json["country"];
    if(json["has_upcoming_events"] is bool)
      this.hasUpcomingEvents = json["has_upcoming_events"];
    if(json["num_upcoming_events"] is int)
      this.numUpcomingEvents = json["num_upcoming_events"];
    if(json["city"] is String)
      this.city = json["city"];
    if(json["slug"] is String)
      this.slug = json["slug"];
    if(json["extended_address"] is String)
      this.extendedAddress = json["extended_address"];
    if(json["id"] is int)
      this.id = json["id"];
    if(json["popularity"] is int)
      this.popularity = json["popularity"];
    if(json["access_method"] is Map)
      this.accessMethod = json["access_method"] == null ? null : AccessMethod.fromJson(json["access_method"]);
    if(json["metro_code"] is int)
      this.metroCode = json["metro_code"];
    if(json["capacity"] is int)
      this.capacity = json["capacity"];
    if(json["display_location"] is String)
      this.displayLocation = json["display_location"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["state"] = this.state;
    data["name_v2"] = this.nameV2;
    data["postal_code"] = this.postalCode;
    data["name"] = this.name;
    if(this.links != null)
      data["links"] = this.links;
    data["timezone"] = this.timezone;
    data["url"] = this.url;
    data["score"] = this.score;
    if(this.location != null)
      data["location"] = this.location!.toJson();
    data["address"] = this.address;
    data["country"] = this.country;
    data["has_upcoming_events"] = this.hasUpcomingEvents;
    data["num_upcoming_events"] = this.numUpcomingEvents;
    data["city"] = this.city;
    data["slug"] = this.slug;
    data["extended_address"] = this.extendedAddress;
    data["id"] = this.id;
    data["popularity"] = this.popularity;
    if(this.accessMethod != null)
      data["access_method"] = this.accessMethod!.toJson();
    data["metro_code"] = this.metroCode;
    data["capacity"] = this.capacity;
    data["display_location"] = this.displayLocation;
    return data;
  }
}

class AccessMethod {
  String? method;
  String? createdAt;
  bool? employeeOnly;

  AccessMethod({this.method, this.createdAt, this.employeeOnly});

  AccessMethod.fromJson(Map<String, dynamic> json) {
    if(json["method"] is String)
      this.method = json["method"];
    if(json["created_at"] is String)
      this.createdAt = json["created_at"];
    if(json["employee_only"] is bool)
      this.employeeOnly = json["employee_only"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["method"] = this.method;
    data["created_at"] = this.createdAt;
    data["employee_only"] = this.employeeOnly;
    return data;
  }
}

class Location {
  double? lat;
  double? lon;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    if(json["lat"] is double)
      this.lat = json["lat"];
    if(json["lon"] is double)
      this.lon = json["lon"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["lat"] = this.lat;
    data["lon"] = this.lon;
    return data;
  }
}