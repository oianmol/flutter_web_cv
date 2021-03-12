import 'package:http/http.dart' as http;
import 'package:metadata_fetch/metadata_fetch.dart';

class UrlPreviewFetcher{
  static Future<Metadata> fetch(String linkPreview) async {
    return extract(linkPreview);
  }

}