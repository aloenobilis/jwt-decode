import 'dart:convert';

/// Decodes JWT and Returns the Map<String, dynamic> payload
/// Requires a token string param
Map<String, dynamic> decodeJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('Invalid Token');
  }

  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }
  return payloadMap;
}

/// Decodes encoded base url to validate signature
String _decodeBase64(String str) {
  var output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Invalid Signature');
  }

  return utf8.decode(base64Url.decode(output));
}
