import '../models/user.dart';
import '../cores/http_manager.dart' as _http;

Future<Stream<User>> get() async {
  try {
    return await _http.getSteam<User>(
      'users',
      decoder: (map) => User.fromMap(map),
    );
  } catch (_) {
    print(_);
    throw null;
  }
}
