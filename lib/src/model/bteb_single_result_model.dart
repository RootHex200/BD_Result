
class BtebSingleResultModel {
  String? sId;
  String? technology;
  Results? results;
  String? semester;
  dynamic regulation;
  String? date;
  String? roll;
  dynamic institute;
  
  BtebSingleResultModel(
      {this.sId,
      this.technology,
      this.results,
      this.semester,
      this.regulation,
      this.date,
      this.roll,
      this.institute});

  BtebSingleResultModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    technology = json['technology'];
    results =
        json['results'] != null ? Results.fromJson(json['results']) : null;
    semester = json['semester'];
    regulation = json['regulation'];
    date = json['Date'];
    roll = json['roll'];
    institute = json['institute'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['technology'] = technology;
    if (results != null) {
      data['results'] = results!.toJson();
    }
    data['semester'] = semester;
    data['regulation'] = regulation;
    data['Date'] = date;
    data['roll'] = roll;
    data['institute'] = institute;
    return data;
  }
}

class Results {
  dynamic passed;
  dynamic rollP;
  dynamic gpa;
  dynamic gPA;
  dynamic cGPA;
  dynamic cGPAp;
  dynamic failed;
  dynamic rollF;
  List<String>? subjects;

  Results(
      {this.passed,
      this.rollP,
      this.gpa,
      this.gPA,
      this.cGPA,
      this.cGPAp,
      this.failed,
      this.rollF,
      this.subjects});

  Results.fromJson(Map<String, dynamic> json) {
    passed = json['passed'];
    rollP = json['rollP'];
    gpa = json['gpa'];
    gPA = json['GPA'];
    cGPA = json['CGPA'];
    cGPAp = json['CGPAp'];
    failed = json['failed'];
    rollF = json['rollF'];
    subjects =json['subjects']!=null? json['subjects'].replaceAll('{', '').replaceAll('}', '').trim().split(','):json['subjects'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['passed'] = passed;
    data['rollP'] = rollP;
    data['gpa'] = gpa;
    data['GPA'] = gPA;
    data['CGPA'] = cGPA;
    data['CGPAp'] = cGPAp;
    data['failed'] = failed;
    data['rollF'] = rollF;
    data['subjects'] = subjects;
    return data;
  }
}
