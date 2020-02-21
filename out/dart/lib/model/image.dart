part of openapi.api;

class Image {
  
  String content = null;
  
  ImageSource1 souce = null;
  Image();

  @override
  String toString() {
    return 'Image[content=$content, souce=$souce, ]';
  }

  Image.fromJson(Map<String, dynamic> json) {
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

  static List<Image> listFromJson(List<dynamic> json) {
    return json == null ? List<Image>() : json.map((value) => Image.fromJson(value)).toList();
  }

  static Map<String, Image> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Image>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Image.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Image-objects as value to a dart map
  static Map<String, List<Image>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Image>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Image.listFromJson(value);
       });
     }
     return map;
  }
}

