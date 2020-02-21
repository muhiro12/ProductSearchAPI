part of openapi.api;

class AnnotateImageRequest {
  
  Image1 image = null;
  
  List<Feature1> features = [];
  
  ImageContext1 imageContext = null;
  AnnotateImageRequest();

  @override
  String toString() {
    return 'AnnotateImageRequest[image=$image, features=$features, imageContext=$imageContext, ]';
  }

  AnnotateImageRequest.fromJson(Map<String, dynamic> json) {
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

  static List<AnnotateImageRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotateImageRequest>() : json.map((value) => AnnotateImageRequest.fromJson(value)).toList();
  }

  static Map<String, AnnotateImageRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AnnotateImageRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotateImageRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotateImageRequest-objects as value to a dart map
  static Map<String, List<AnnotateImageRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AnnotateImageRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AnnotateImageRequest.listFromJson(value);
       });
     }
     return map;
  }
}

