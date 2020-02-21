part of openapi.api;

class GroupedResult1 {
  
  BoundingPoly1 boundingPoly = null;
  
  List<Result1> results = [];
  
  List<ObjectAnnotation1> objectAnnotations = [];
  GroupedResult1();

  @override
  String toString() {
    return 'GroupedResult1[boundingPoly=$boundingPoly, results=$results, objectAnnotations=$objectAnnotations, ]';
  }

  GroupedResult1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    boundingPoly = (json['boundingPoly'] == null) ?
      null :
      BoundingPoly1.fromJson(json['boundingPoly']);
    results = (json['results'] == null) ?
      null :
      Result1.listFromJson(json['results']);
    objectAnnotations = (json['objectAnnotations'] == null) ?
      null :
      ObjectAnnotation1.listFromJson(json['objectAnnotations']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (boundingPoly != null)
      json['boundingPoly'] = boundingPoly;
    if (results != null)
      json['results'] = results;
    if (objectAnnotations != null)
      json['objectAnnotations'] = objectAnnotations;
    return json;
  }

  static List<GroupedResult1> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupedResult1>() : json.map((value) => GroupedResult1.fromJson(value)).toList();
  }

  static Map<String, GroupedResult1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupedResult1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupedResult1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupedResult1-objects as value to a dart map
  static Map<String, List<GroupedResult1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GroupedResult1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GroupedResult1.listFromJson(value);
       });
     }
     return map;
  }
}

