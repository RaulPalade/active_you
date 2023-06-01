import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// [SecureStorageManager] is used to execute operations on Secure Storage of the devices
///
/// * Keychain is used for iOS
/// * AES encryption is used for Android. AES secret key is encrypted with RSA and RSA key is stored in KeyStore
///
/// @see https://github.com/mogol/flutter_secure_storage for further information
class SecureStorageManager {
  final String idTokenKey = "access_token";

  final _storage = const FlutterSecureStorage();

  /// Read value from storage having the provided key
  Future<String?> readValue(String key) async => await _storage.read(key: key);

  /// Read all the values from the storage
  Future<Map<String, String>> readAllValues() async => _storage.readAll();

  /// Delete value from the storage with the provided key
  Future<void> deleteValue(String key) async => _storage.delete(key: key);

  /// Delete all values from the storage
  Future<void> deleteAll() async => _storage.deleteAll();

  /// Write a new value in the storage
  Future<void> writeValue(String key, String value) async =>
      _storage.write(key: key, value: value);
}
