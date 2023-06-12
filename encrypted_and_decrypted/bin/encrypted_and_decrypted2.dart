import 'dart:convert';

void main() {
  String password = "varp@ssw0rd";
  String sentence = "Dart and Aqueduct makes my life easier. Thank you";
  var encode1 = base64.encode(utf8.encode(password));
  print(encode1); //dmFycEBzc3cwcmQ=

  var encode2 = base64.encode(utf8.encode(sentence));
  print(
      encode2); //RGFydCBhbmQgQXF1ZWR1Y3QgbWFrZXMgbXkgbGlmZSBlYXNpZXIuIFRoYW5rIHlvdQ==

  String decryptString1 = "dmFycEBzc3cwcmQ=";
  var decode1 = base64.decode(decryptString1);
  print(decode1);
  String decryptString2 =
      "RGFydCBhbmQgQXF1ZWR1Y3QgbWFrZXMgbXkgbGlmZSBlYXNpZXIuIFRoYW5rIHlvdQ==";
  var decode2 = base64.decode(decryptString2);
  print(decode2);
}
