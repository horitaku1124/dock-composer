import 'dart:io';
import 'package:yaml/yaml.dart';

void main(List<String> arguments) {
  var path = Directory.current.path;
  var target = File('$path/docker-compose.yml');
  if (target.existsSync()) {
    target.readAsString().then((String contents) {
      YamlMap doc = loadYaml(contents);
      for (var element in doc['services'].entries) {
        print(element.key);
      }
    });
  } else {
    print("File doesnt exist");
  }
}
