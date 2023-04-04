class Education {
  String? title;
  String? year;
  String? percentage;

  Education({this.title, this.year, this.percentage});

  Education.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    year = json['year'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['year'] = year;
    data['percentage'] = percentage;
    return data;
  }
}
