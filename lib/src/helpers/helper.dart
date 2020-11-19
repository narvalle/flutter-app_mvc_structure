import '../cores/constants.dart' show URL_BASE;

class Helper {
  static Uri getUri([String path = '']){
    final _uri = Uri.parse(URL_BASE);
    String _path = _uri.path;
    if(!_path.endsWith('/')){
      _path+='/';
    }
    return Uri(
      scheme: _uri.scheme,
      host: _uri.host,
      port: _uri.port,
      path: _path + path,
    );
  }
  static getDataFromMap(Map<String, dynamic> map) => map['data'];
}