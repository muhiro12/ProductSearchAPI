part of openapi.api;

class AnnotateImageRequest1 {
  
  Image1 image = null;
  
  List<Feature1> features = [];
  
  ImageContext1 imageContext = null;
  AnnotateImageRequest1();

  @override
  String toString() {
    return 'AnnotateImageRequest1[image=$image, features=$features, imageContext=$imageContext, ]';
  }

  AnnotateImageRequest1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    image = (json['image'] == null) ?
      null :
      Image1.fromJson(json['image']);
    features = (json['features'] == null) ?
      null :
      Feature1.listFromJson(json['features']);
    imageContext = (json['imageContext'] == null) ?
      null :
      ImageContext1.fromJson(json['imageContext']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (image != null)
      json['image'] = image;
    if (features != null)
      json['features'] = features;
    if (imageContext != null)
      json['imageContext'] = imageContext;
    return json;
  }

  static List<AnnotateImageRequest1> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotateImageRequest1>() : json.map((value) => AnnotateImageRequest1.fromJson(value)).toList();
  }

  static Map<String, AnnotateImageRequest1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AnnotateImageRequest1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotateImageRequest1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotateImageRequest1-objects as value to a dart map
  static Map<String, List<AnnotateImageRequest1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AnnotateImageRequest1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AnnotateImageRequest1.listFromJson(value);
       });
     }
     return map;
  }
}

