

class Endpoint {


  static  String get baseUrl=> "https://btebresultsbd.com/api/";

  static String getBtebSingleResult({required String rollNumber,required String technology}){
    return "$baseUrl/result?rollNumber=$rollNumber&technology=$technology";
  }

  static String getBtebGroupResult({required String startRoll,required String endRoll,required String semester,required String technology }){

    return "$baseUrl/group?startRoll=$startRoll&endRoll=$endRoll&semester=$semester&technology=$technology";
  }
}