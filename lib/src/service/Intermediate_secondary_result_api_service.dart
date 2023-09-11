
import 'package:bd_result/src/constants/values.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:dio/dio.dart';
import 'package:html/parser.dart';

class IntermediateSecondaryApi{


Future getInertSecondaryResul(UserInputdataModel userdata )async{
    var res=await Dio().get("http://www.educationboardresults.gov.bd/index.php",
  options: Options(
    sendTimeout: const Duration(seconds: 1),
    receiveTimeout: const Duration(seconds: 3),
      headers: {
     'Cookie':"tcount_unique_eb_log=9; PHPSESSID=0uvEyGs0AuvDC7sQ9PNLErDx",
    }
  )
  );
  if(res.statusCode==200){
      var document=parse(res.data);
  var captcha=document.getElementsByClassName("black12bold")[0].children[0].children[6].children[1];

  Map<String,dynamic> data = {
        "sr": '3', 
        "et": '2',  
        "exam": interSecondExamcheck[userdata.examname].toString(),
        'year': userdata.year.toString(),
        "board": interSecondBoardcheck[userdata.boardname],
        "roll": userdata.insecroll.toString().trimLeft().trimRight(),
        "reg": userdata.reg.toString().trimLeft().trimRight(),
        'value_s': getResult(captcha).toString(),
        'button2': 'Submit'
    };
  var postres=await Dio().post("http://www.educationboardresults.gov.bd/result.php",
  data: data,
  options: Options(
    sendTimeout: const Duration(seconds: 2),
    receiveTimeout: const Duration(seconds: 4),
      headers: {
        "Content-Type":"application/x-www-form-urlencoded",
        'Cookie':"tcount_unique_eb_log=9; PHPSESSID=0uvEyGs0AuvDC7sQ9PNLErDx",
        // "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36",
    }
  )
  );
  if(postres.statusCode==200){
    return postres.data;
  }else{
    return Exception("result not found");
  }
  }else{
    return Exception("server error");
  }
}

int getResult(value){
    var captchaText=value.text.split(" ");
    if(captchaText[1]=="+"){
    var result=int.parse(captchaText[0])+int.parse(captchaText[2]);
    return result;
  }else if(captchaText[1]=="-"){
    var result=int.parse(captchaText[0])-int.parse(captchaText[2]);
    return result;
  }else if(captchaText[1]=="*"){
    var result=int.parse(captchaText[0])*int.parse(captchaText[2]);
    return result;
  }else if(captchaText[1]=="/"){
    var result=int.parse(captchaText[0])/int.parse(captchaText[2]);
    return result.toInt();
  }
  return 0;
}

}