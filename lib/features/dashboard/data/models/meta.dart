
class Meta {
  int? total;
  int? took;
  int? page;
  int? perPage;
  dynamic geolocation;

  Meta({this.total, this.took, this.page, this.perPage, this.geolocation});

  Meta.fromJson(Map<String, dynamic> json) {
    if(json["total"] is int)
      this.total = json["total"];
    if(json["took"] is int)
      this.took = json["took"];
    if(json["page"] is int)
      this.page = json["page"];
    if(json["per_page"] is int)
      this.perPage = json["per_page"];
    this.geolocation = json["geolocation"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["total"] = this.total;
    data["took"] = this.took;
    data["page"] = this.page;
    data["per_page"] = this.perPage;
    data["geolocation"] = this.geolocation;
    return data;
  }
}
