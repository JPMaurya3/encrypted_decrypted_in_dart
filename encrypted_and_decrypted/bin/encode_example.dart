/*dart convert library which provide various encoding and decoding functions */
import 'dart:convert';

void main() {
  /*here base64 encode and decode is provide by dart convert library */
  var encode1 = base64.encode(utf8.encode("codeUnits"));
  /*UCS (Unicode) Transformation Format,here utf8.encoding function is used to convert the string
  into byte array using the utf8 encoding and encode1 is the variable .it gives information of memory location */
  print("encode1:$encode1");

  /*invalid index can not be excuted */
  var encode2 = base64.encode([
    97,
    121,
    32,
    119,
    105,
    116,
    104,
    111,
    117,
    116,
    32,
    115,
    110,
  ]);
  print("encode2:$encode2");
}
