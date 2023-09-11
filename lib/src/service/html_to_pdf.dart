import 'dart:developer';
import 'dart:io';

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:bd_result/src/constants/secret.dart';
import 'package:bd_result/src/constants/values.dart';
import 'package:flutter/services.dart';
import 'package:html/parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class PDFserviceHtmlToPdf {
  Future<ByteData> htmlToPdf(var htmlcontent) async {
    var document = parse(htmlcontent);
    Directory dir = await getApplicationCacheDirectory();

    //fix html file for pdf
    var htmlfile = await writeHtmlfile(document, dir);
    log("html file",error: htmlfile.path);

    final bytearray=await htmlToPdfOnlineAPI(htmlfile);
    return bytearray;
  }

  Future<File> writeHtmlfile(document,Directory dir) async {
    var htmlfilepath = "${dir.path}/tmp.html";
    var htmlfile = File(htmlfilepath);
    var oldlinkcss =
        document.getElementsByTagName("link")[0].attributes["href"];
    var newlinkcss = baseurl + oldlinkcss.toString();
    document.getElementsByTagName("link")[0].attributes["href"] = newlinkcss;

    var allimage = document.getElementsByTagName("img");
    for (var image in allimage) {
      var tag = image.attributes["src"];
      var newsrc = baseurl + tag.toString();
      image.attributes["src"] = newsrc;
    }

    var tdbacground = document.getElementsByTagName("td");
    for (var td in tdbacground) {
      var tag = td.attributes["background"];
      if (tag != null) {
        var newsrc = baseurl + tag.toString();
        td.attributes["background"] = newsrc;
      }
    }
    await htmlfile.writeAsString('');
    await htmlfile.writeAsString(document.outerHtml);
    return htmlfile;
  }

  Future<ByteData> htmlToPdfOnlineAPI(File htmlfile)async{
    final config = Configuration(CLIENT_ID,
        CLIENT_SECRET);
    final wordsApi = WordsApi(config);

    final doc =
        (await htmlfile.readAsBytes())
            .buffer
            .asByteData();
    final request = ConvertDocumentRequest(doc, 'pdf');
    final convert = await wordsApi.convertDocument(request);
    return convert;
  }

  Future<dynamic> htmlToPdfDownload(ByteData filedata)async{
      Map<Permission, PermissionStatus> statuses = await [
    Permission.storage,
  ].request();
  if(statuses[Permission.storage]!.isGranted){
    String filename="${DateTime.now()}-${DateTime.now().millisecondsSinceEpoch.toString()}";
    try{
    Directory dir = Directory('/storage/emulated/0/Download');
    final file = File('${dir.path}/$filename.pdf');
    await file.writeAsBytes(filedata.buffer.asUint8List());
    return "Download successfully ${file.path}";
    }catch (e){
      return "Download Faild";
    }
  }else{
    return "permission error";
  
  }
  }
}
