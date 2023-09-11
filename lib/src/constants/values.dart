const List<String> resultNames=[
  "Bangladesh Technical Education Board",
  "Intermediate and Secondary Board",
];
const List<String> btebTechnology=[
"DIPLOMA IN ENGINEERING",
"DIPLOMA IN TOURISM AND HOSPITALITY",
"DIPLOMA IN TEXTILE ENGINEERING",
"DIPLOMA IN AGRICULTURE",
"DIPLOMA IN FISHERIES",
"DIPLOMA IN FORESTRY",
"DIPLOMA IN LIVESTOCK",
"CERTIFICATE IN MARINE TRADE",
"DIPLOMA IN MEDICAL TECHNOLOGY",
"DIPLOMA IN TOURISM AND HOSPITALITY MANAGEMENT",
"DIPLOMA IN HEALTH TECHNOLOGY AND SERVICES",
];

const List<String> btebsemester=[
"1st Semester",
"2nd Semester",
"3rd Semester",
"4th Semester",
"5th Semester",
"6th Semester",
"7th Semester",
"8th Semester",
];

const List<String> btebResultType=[
  "Single Result",
  "Group Result",
];


Map<String,dynamic> interSecondExamcheck={
    "JSC/JDC": "jsc",
    "SSC(Vocational)": "ssc_voc",
    "SSC/Dakhil": "ssc",
    "HSC/Alim/Equivalent": "hsc",
    "HSC()": 'hsc_voc',
    "HSC(BM)": 'hsc_hbm',
    "Diploma in Commerce": 'hsc_dic',
    "Diploma in Business Studies": "hsc"
};
List<String> interSecondExamName=[
    "JSC/JDC",
    "SSC(Vocational)",
    "SSC/Dakhil",
    "HSC/Alim/Equivalent",
    "HSC()",
    "HSC(BM)",
    "Diploma in Commerce",
    "Diploma in Business Studies"
];
Map<String,dynamic> interSecondBoardcheck= {
    "Dhaka": 'dhaka',
    "Barisal": "barisal",
    "Chittagong": "chittagong",
    "Comilla": "comilla",
    "Dinajpur": "dinajpur",
    "Jessore": "jessore",
    "Mymensingh": "mymensingh",
    "Rajshahi": "rajshahi",
    "Shylet": "shylet",
    "Madrasah": "madrasah",
    "Technical": "tec",
    "DIBS(Dhaka)": "dibs",
};
List<String> interSecondBoardName=[
      "Dhaka",
    "Barisal",
    "Chittagong",
    "Comilla",
    "Dinajpur",
    "Jessore",
    "Mymensingh",
    "Rajshahi",
    "Shylet",
    "Madrasah",
    "Technical",
    "DIBS(Dhaka)",
];


List<String> getYears(){
  var year=DateTime.now().year;
  List<String> years=[];
  for(var i=0;i<20;i++){
    years.add((year-i).toString());
  }
  return years;
}
  String baseurl="http://www.educationboardresults.gov.bd/";
