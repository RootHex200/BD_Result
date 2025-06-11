

class Endpoint {


  static  String get baseUrl=> "https://btebresultsbd.com/api/";

  static String getBtebSingleResult({required String rollNumber,required String technology}){
    return "$baseUrl?rollNumber=$rollNumber&technology=$technology";
  }
}