part of openapi.api;

class Image1 {
  
  String content = null;
  
  ImageSource1 souce = null;
  Image1();

  @override
  String toString() {
    return 'Image1[content=$content, souce=$souce, ]';
  }

  Image1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    souce = (json['souce'] == null) ?
      null :
      ImageSource1.fromJson(json['souce']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (souce != null)
      json['souce'] = souce;
    return json;
  }

  static List<Image1> listFromJson(List<dynamic> json) {
    return json == null ? List<Image1>() : json.map((value) => Image1.fromJson(value)).toList();
  }

  static Map<String, Image1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Image1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Image1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Image1-objects as value to a dart map
  static Map<String, List<Image1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Image1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Image1.listFromJson(value);
       });
     }
     return map;
  }
}

