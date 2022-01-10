import 'package:metadata_fetch/metadata_fetch.dart';

class UrlPreviewFetcher{
  static Future<Metadata?> fetch(String linkPreview) async {
    return await MetadataFetch.extract(linkPreview);
  }
}