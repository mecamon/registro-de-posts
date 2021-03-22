import 'dart:io';

String jsonReader(String filename) => 
  File('test/mocks/$filename').readAsStringSync();