part of openapi.api;

class ImageSource {
  
  String gcsImageUri = null;
  
  String imageUri = null;
  ImageSource();

  @override
  String toString() {
    return 'ImageSource[gcsImageUri=$gcsImageUri, imageUri=$imageUri, ]';
  }

  ImageSource.fromJson(Map<String, dynamic> json) {
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

  static List<ImageSource> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageSource>() : json.map((value) => ImageSource.fromJson(value)).toList();
  }

  static Map<String, ImageSource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageSource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageSource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageSource-objects as value to a dart map
  static Map<String, List<ImageSource>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageSource>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageSource.listFromJson(value);
       });
     }
     return map;
  }
}

