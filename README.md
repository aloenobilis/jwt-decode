A library for decoding JWT tokens to get their payload.

## Usage

A token string is passed to ```decodeJwt``` which decodes the token and returns the payload
as a Dart map.

```dart
import 'package:jwt_decode/jwt_decode.dart';

main() {
  Map<String, dynamic> payload = decodeJwt(token);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/sashvoncurtis/jwt-decode/issues
