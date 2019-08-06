import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false);
  } else {
    throw 'Could not launch $url';
  }
}

Future<String> get localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> getFile(filePath) async {
  final path = await localPath;
  return File('$path/$filePath');
}
