part of openapi.api;

class InlineObject {
  
  List<AnnotateImageRequest1> requests = [];
  
  String parent = null;
  InlineObject();

  @override
  String toString() {
    return 'InlineObject[requests=$requests, parent=$parent, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    requests = (json['requests'] == null) ?
      null :
      AnnotateImageRequest1.listFromJson(json['requests']);
    parent = json['parent'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (requests != null)
      json['requests'] = requests;
    if (parent != null)
      json['parent'] = parent;
    return json;
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject>() : json.map((value) => InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject.listFromJson(value);
       });
     }
     return map;
  }
}

