import 'dart:io' as io;

import 'package:file_picker/file_picker.dart';

class AttachFiles {
  static Future<List<io.File>?> getFiles() async {
    FilePickerResult? fileResult = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ["pdf"],
      allowCompression: true,
    );
    if (fileResult != null) {
      List<io.File> files =
          fileResult.paths.map((path) => io.File(path!)).toList();
      return files;
    } else {
      return null;
    }
  }
}
