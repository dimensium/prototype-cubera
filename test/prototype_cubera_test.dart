import 'package:prototype_cubera/prototype_cubera.dart';
import 'package:test/test.dart';
import "dart:io";

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test("getFileContents", () async{
    {
      // prepare file data.
      var testFile = File("testSource.txt");
      testFile.writeAsString("hello");
    }
    expect(await getFileContents("testSource.txt"), "hello");
  });
}
