/*How to Encode String to Base64:*/
import 'dart:convert';

void main() {
  String userName = "myusername|password";
  /*The codeUnits property of the String class is used to convert the string to a List of UTF-16 code units. */
  var encode1 = base64.encode(userName.codeUnits);
  print(encode1);

  String myData1 = "myusername|password";
  var myDataInt = utf8.encode(myData1);
  print(myDataInt);
  var v1 = base64.encode(myDataInt);
  print(v1);

  var v2 = base64.encode(utf8.encode("myusername|password"));
  print(v2);
}
