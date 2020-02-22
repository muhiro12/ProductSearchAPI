part of openapi.api;

class GroupedResult {
  
  List<ProductSearchResult1> results = [];
  
  List<ObjectAnnotation1> objectAnnotations = [];
  GroupedResult();

  @override
  String toString() {
    return 'GroupedResult[results=$results, objectAnnotations=$objectAnnotations, ]';
  }

  GroupedResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ProductSearchResult1.listFromJson(json['results']);
    objectAnnotations = (json['objectAnnotations'] == null) ?
      null :
      ObjectAnnotation1.listFromJson(json['objectAnnotations']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    if (objectAnnotations != null)
      json['objectAnnotations'] = objectAnnotations;
    return json;
  }

  static List<GroupedResult> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupedResult>() : json.map((value) => GroupedResult.fromJson(value)).toList();
  }

  static Map<String, GroupedResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupedResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupedResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupedResult-objects as value to a dart map
  static Map<String, List<GroupedResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GroupedResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GroupedResult.listFromJson(value);
       });
     }
     return map;
  }
}

