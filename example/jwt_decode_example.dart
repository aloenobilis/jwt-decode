import 'package:jwt_decode/jwt_decode.dart';

void main() {
  var token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiMSIsInVzZXJuYW1lIjoiZGFydHNvY2lldHkiLCJlbWFpbCI6ImhlbGxvQGRhcnRzb2NpZXR5LmRldiJ9LCJpYXQiOjE1ODc3NzIyMTUsImV4cCI6MTU5MDM2NDIxNX0.ixXHGIxVXsbhkV5fUO11RG84cxebOlVVjrBa7rkcUXY';
  var payload = decodeJwt(token);

  print(payload);
  // --> {user: {id: 1, username: Greenberg, email: greenberg@budgestry.com}, iat: 1587770971, exp: 1590362971}
}
