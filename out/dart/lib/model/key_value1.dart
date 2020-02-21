part of openapi.api;

class KeyValue1 {
  
  String key = null;
  
  String value = null;
  KeyValue1();

  @override
  String toString() {
    return 'KeyValue1[key=$key, value=$value, ]';
  }

  KeyValue1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (key != null)
      json['key'] = key;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<KeyValue1> listFromJson(List<dynamic> json) {
    return json == null ? List<KeyValue1>() : json.map((value) => KeyValue1.fromJson(value)).toList();
  }

  static Map<String, KeyValue1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, KeyValue1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = KeyValue1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of KeyValue1-objects as value to a dart map
  static Map<String, List<KeyValue1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<KeyValue1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = KeyValue1.listFromJson(value);
       });
     }
     return map;
  }
}

