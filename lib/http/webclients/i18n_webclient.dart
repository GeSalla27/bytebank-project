import 'dart:convert';

import 'package:bytebank/http/webclient.dart';
import 'package:http/http.dart';

const MESSAGES_URI =
    "https://gist.githubusercontent.com/GeSalla27/dcbf7e6b1567671b76f2f0b11dd3ddc4/raw/7d8b8c1c2b588a1a9ad6c5506cad3cf5cfdbbdae/";

class I18NWebClient {
  final String _viewKey;

  I18NWebClient(this._viewKey);

  Future<Map<String, dynamic>> findAll() async {
    final Response response =
        await client.get(Uri.parse("$MESSAGES_URI$_viewKey.json"));
    final Map<String, dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson;
  }
}
