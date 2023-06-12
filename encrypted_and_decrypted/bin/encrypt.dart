// //final plainText = 'hello';

// import 'package:encrypt/encrypt.dart';

// /*This line imports the encrypt package,
//  * which provides a way to encrypt and decrypt data using various
//  * encryption algorithms: An encryption algorithm is the method used to transform data into ciphertext*/
// void main() {
//   final plainText = "hello";

//   /// Represents an Encryption Key.
//   final key = Key.fromUtf8('this is a key');

//   /// Creates an Encrypted object from a UTF-8 string.

//   final iv = IV.fromLength(8);

//   /// Represents an Initialization Vector.
//   final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
//   /*This line creates an Encrypter object that will
//   be used to encrypt and decrypt data. The AES constructor
//   is used to create a new AES encryption algorithm with the specified key
//    and mode, and this is passed to the Encrypter constructor.*/
//   /// Wraps Algorithms in a unique Container.

//   final encrypted = encrypter.encrypt(plainText, iv: iv);
//   final decrypted = encrypter.decrypt(encrypted, iv: iv);
//   print(decrypted);
//   print(encrypted.base64);
// }

import 'package:encrypt/encrypt.dart';

void main() {
  final plainText = 'hello';
  final key = Key.fromSecureRandom(32);
  final iv = IV.fromSecureRandom(16);

  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  final encrypted = encrypter.encrypt(plainText, iv: iv);
  final decrypted = encrypter.decrypt(encrypted, iv: iv);

  print(decrypted);
  print(encrypted.base64);
}
