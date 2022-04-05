class Resource {
  String Id = "";
  String Url = "";
  String Title = "";

  Resource(String id, String title, String url) {
    Id = id;
    Title = title;
    Url = url;
  }

  factory Resource.fromJson(Map<String, dynamic> json) {
    return Resource(json['id'], json['title'], json['url']);
  }
}
