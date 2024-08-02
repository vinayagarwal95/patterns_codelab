import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // final metaDataRecord = document.metadata;
    final (title, :modified) = document.metadata; // The record pattern (title, modified: modified) contains two variable patterns that match against the fields of the record returned by metadata.
    // This is a shorthand for when the name of a field and the variable populating it are the same.
    // If we want a new local variable of a different name, we can write modified: localModified instead.




    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified',
            ),
          ),
        ],
      ),
    );
  }
}
