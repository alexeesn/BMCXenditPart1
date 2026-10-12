import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class KeyStorageServeices {
  static const _storage = FlutterSecureStorage();
  static const _keyName = 'xending_secret_key';

  static Future<void> save(String key) =>
  _storage.write(key: _keyName, value: key.trim());

  static Future<void> clear() => _storage.delete(key: _keyName);
}