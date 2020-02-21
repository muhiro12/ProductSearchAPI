part of openapi.api;

class ImageSource1 {
  
  String gcsImageUri = null;
  
  String imageUri = null;
  ImageSource1();

  @override
  String toString() {
    return 'ImageSource1[gcsImageUri=$gcsImageUri, imageUri=$imageUri, ]';
  }

  ImageSource1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    gcsImageUri = json['gcsImageUri'];
    imageUri = json['imageUri'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (gcsImageUri != null)
      json['gcsImageUri'] = gcsImageUri;
    if (imageUri != null)
      json['imageUri'] = imageUri;
    return json;
  }

  static List<ImageSource1> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageSource1>() : json.map((value) => ImageSource1.fromJson(value)).toList();
  }

  static Map<String, ImageSource1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageSource1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageSource1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageSource1-objects as value to a dart map
  static Map<String, List<ImageSource1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageSource1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageSource1.listFromJson(value);
       });
     }
     return map;
  }
}

