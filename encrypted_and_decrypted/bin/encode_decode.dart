/*we used dart:convert library to decode and encode base64
methods used to base64 decoding and encoding
 */
import 'dart:convert';

// main.dart
void main() {
  // base64 encoding a string
  /*If you want to base64-encode a string, you need to convert it to Uint8List by using utf8.encode(), like this: */
  var encoded1 = base64.encode(utf8.encode('I like dogs'));
  print('Encoded 1: $encoded1');

  // base64 encoding bytes
  var encoded2 = base64.encode([
    65,
    32,
    103,
    111,
    111,
    100,
    32,
    100,
    97,
    121,
    32,
    105,
    115,
    32,
    97,
    32,
    100,
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
    111,
    119
  ]);
  print('Encoded 2: $encoded2');

  // base64 decoding
  var decoded = base64.decode('QSBnb29kIGRheSBpcyBhIGRheSB3aXRob3V0IHNub3c=');
  print('Decoded1: $decoded');
  // Converting the decoded result to string
  print(utf8.decode(decoded));
}
