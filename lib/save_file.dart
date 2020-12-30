import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  print(directory);
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/json.txt');
}

Future<File> savetoFile(String json) async {
  final file = await _localFile;

  // Write the file.
  return file.writeAsString('$json');
}
