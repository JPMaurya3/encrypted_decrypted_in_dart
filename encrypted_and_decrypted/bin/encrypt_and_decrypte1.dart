import 'dart:convert';

void main() {
  /*Base64 encoding and decoding are commonly used to 
  convert binary data (such as images, audio, and video)
   into text-based data (such as ASCII characters)*/
  var decode1 = base64.decode(
      "aGVsbG90aGlzaXN1YmFubW9uZXl0b2tlbmNyZWF0ZWRieWhhcmVuZGVyc2luZ2huZWdp");
  print("$decode1\n");

  var decode2 = base64.decode("dXJiYW5Nb25leTp1cmJhbk1vbmV5QDEyMw==");
  print(decode2);

  String encode = base64.encode(utf8.encode("credentials"));
  print(encode);

  var decode = base64.decode("dXNlcm5hbWU6cGFzc3dvcmQ=");
  print(decode);

  var encode3 = base64.encode([
    117,
    114,
    98,
    97,
    110,
    77,
    111,
    110,
    101,
    121,
    58,
    117,
    114,
    98,
    97,
    110,
    77,
    111,
    110,
    101,
    121,
    64,
    49,
    50,
    51
  ]);
}
