import 'package:yaml/yaml.dart';
import 'dart:io';

void main(List<String> arguments) {
  File('docker-compose.yml').readAsString().then((String contents) {
    YamlMap doc = loadYaml(contents);
    for (var element in doc['services'].entries) {
      print(element.key);
    }
  });
}
