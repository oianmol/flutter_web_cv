import 'package:flutter/material.dart';
import 'package:metadata_fetch/metadata_fetch.dart';

/// Link Preview Widget
class LinkPreview extends StatefulWidget {
  final String linkPreview;
  final Metadata metadata;
  final TextStyle titleStyle;
  final TextStyle bodyStyle;

  LinkPreview(
      {this.linkPreview, this.metadata, this.bodyStyle, this.titleStyle});

  @override
  _FlutterLinkPreviewState createState() => _FlutterLinkPreviewState();
}

class _FlutterLinkPreviewState extends State<LinkPreview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Image.network(
              widget.metadata.image ?? "",
              fit: BoxFit.contain,
              width: 30,
              height: 30,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.link, size: 30, color: widget.titleStyle?.color),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.metadata.title?? "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: widget.titleStyle,
              ),
            ),
          ],
        ),
        if (widget.metadata.description != null &&
            widget.metadata.description.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(
            widget.metadata.description,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: widget.bodyStyle,
          ),
        ],
      ],
    );
  }
}
