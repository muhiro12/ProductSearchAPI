part of openapi.api;

class BatchAnnotateImagesResponse {
  
  List<AnnotateImageResponse1> responses = [];
  BatchAnnotateImagesResponse();

  @override
  String toString() {
    return 'BatchAnnotateImagesResponse[responses=$responses, ]';
  }

  BatchAnnotateImagesResponse.fromJson(Map<String, dynamic> json) {
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

  static List<BatchAnnotateImagesResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<BatchAnnotateImagesResponse>() : json.map((value) => BatchAnnotateImagesResponse.fromJson(value)).toList();
  }

  static Map<String, BatchAnnotateImagesResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BatchAnnotateImagesResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BatchAnnotateImagesResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BatchAnnotateImagesResponse-objects as value to a dart map
  static Map<String, List<BatchAnnotateImagesResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BatchAnnotateImagesResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BatchAnnotateImagesResponse.listFromJson(value);
       });
     }
     return map;
  }
}

