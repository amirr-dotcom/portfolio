
class Project {
  String? name;
  List<String>? images;
  String? playStore;
  String? appStore;
  String? website;
  String? company;

  Project(
      {this.name, this.images, this.playStore, this.appStore, this.company, this.website});

  Project.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    images = json['images'];
    playStore = json['playStore'];
    appStore = json['appStore'];
    company = json['company'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['images'] = images;
    data['playStore'] = playStore;
    data['appStore'] = appStore;
    data['company'] = company;
    data['website'] = website;
    return data;
  }
}
