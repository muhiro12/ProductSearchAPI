part of openapi.api;

class BatchAnnotateImagesResponse1 {
  
  List<AnnotateImageResponse1> responses = [];
  BatchAnnotateImagesResponse1();

  @override
  String toString() {
    return 'BatchAnnotateImagesResponse1[responses=$responses, ]';
  }

  BatchAnnotateImagesResponse1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    responses = (json['responses'] == null) ?
      null :
      AnnotateImageResponse1.listFromJson(json['responses']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (responses != null)
      json['responses'] = responses;
    return json;
  }

  static List<BatchAnnotateImagesResponse1> listFromJson(List<dynamic> json) {
    return json == null ? List<BatchAnnotateImagesResponse1>() : json.map((value) => BatchAnnotateImagesResponse1.fromJson(value)).toList();
  }

  static Map<String, BatchAnnotateImagesResponse1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BatchAnnotateImagesResponse1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BatchAnnotateImagesResponse1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BatchAnnotateImagesResponse1-objects as value to a dart map
  static Map<String, List<BatchAnnotateImagesResponse1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BatchAnnotateImagesResponse1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BatchAnnotateImagesResponse1.listFromJson(value);
       });
     }
     return map;
  }
}

