/*

Create a class called Doctor which has properties like, 
docID, docName, specilization, workingHour. 
methods like isAvailable(return bool),  profile(print doctor details) 
-> create two or more doctor object from it


Create a class called Patient which has properties like
patID(string), patName(string), diagnizedFor(string), 
appointedDoctor(dataType Doctor)->not compulsory. 
methods like profile(print patient details), consultedDoctorDetails() -> not compulsory;

-> create two or more patient object from it
 */

class Doctor {
  late String docID;
  late String docName;
  late List<String> specilization;
  late Map<String, int> workingHour;

  //constructor, default constructor
  // Doctor() {}

  // argumented constructor or parameterized constructor
  Doctor({
    required this.docID,
    required this.docName,
    required this.specilization,
    required this.workingHour,
  });

  void profile() {
    print('''
    Doctor Name: $docName \t\t Doc Id: $docID\n
    Specialization: $specilization \t\t Working Hour: ${workingHour!['in']} - ${workingHour!['out']}
    ''');
  }

  bool isAvailable() {
    if (workingHour == null) {
      return false;
    }

    DateTime dateTime = DateTime.now();
    int inTime = workingHour!['in']!;
    int outTime = workingHour!['out']!;

    int currentHour = dateTime.hour;
    if (currentHour >= inTime && currentHour <= outTime) {
      return true;
    } else {
      return false;
    }
  }
}

class Patient {
  String? patID;
  String? patName;
  String? diagnizedFor;
  Doctor? appointedDoctor;
  String? discount;

  void profile() {
    print('''
    Patient Name: $patName \t\t Patient Id: $patID\n
    Diagnized For: $diagnizedFor \t\t Doctor: ${appointedDoctor!.docName}}
    ''');
  }

  void consultedDoctorDetails() => appointedDoctor!.profile();
}

void main(List<String> args) {
  Doctor doctor1 = Doctor(
    workingHour: {'in': 9, 'out': 22},
    docName: 'Raj Kumar',
    specilization: ['GP'],
    docID: '1',
  );

  doctor1.profile();
  print(doctor1.isAvailable());

  // doctor1.docID = '1';
  // doctor1.specilization = ['GP'];

  // Doctor doctor2 = Doctor();
  // doctor2.docName = 'David';
  // doctor2.docID = '2';
  // doctor2.specilization = ['Derma'];
  // doctor2.workingHour = {'in': 9, 'out': 18};

  // doctor1.profile();
}
