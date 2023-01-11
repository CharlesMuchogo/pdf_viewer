import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfView extends StatefulWidget {
  final File file;
  PdfView({required this.file});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(name),
        ),
        body: PDFView(
          filePath: widget.file.path,
        ));
  }
}
