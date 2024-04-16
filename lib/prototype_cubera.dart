import "dart:io";

int calculate() {
  return 6 * 7;
}

Future<String> getFileContents(String filename) async {
  var fileObject = File(filename);
  var content = await fileObject.readAsString();
  return content;
}