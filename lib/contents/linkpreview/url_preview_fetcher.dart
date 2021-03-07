import 'package:http/http.dart' as http;
import 'package:metadata_fetch/metadata_fetch.dart';

class UrlPreviewFetcher{
  static Future<Metadata> fetch(String linkPreview) async {
    // Makes a call
    var response = await http.get(Uri.parse(linkPreview));
    print(response);
    // Covert Response to a Document. The utility function `responseToDocument` is provided or you can use own decoder/parser.
    var document = responseToDocument(response);
    print(document);

    // get metadata
    var data = MetadataParser.openGraph(document);
    print(data);
    return data;
  }

}