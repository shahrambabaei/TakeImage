import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ShowImageScreen extends StatefulWidget {
  final XFile xfile;
  const ShowImageScreen({super.key, required this.xfile});

  @override
  State<ShowImageScreen> createState() => _ShowImageScreenState();
}

class _ShowImageScreenState extends State<ShowImageScreen> {
  @override
  Widget build(BuildContext context) {
    File picture = File(widget.xfile.path);
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHow Image"),
      ),
      body: Container(child: Image.file(picture)),
    );
  }
}
