void main() {
  var simpleMap = new Map();

  simpleMap["test"] = "hello";
  simpleMap["yo"] = "sup";

  for(var key in simpleMap.keys) {
    print("key: " + key + " val: " + simpleMap[key]);
  }
}