class Doctor {
  late String docID;
  late String docName;
  late List<String> specilization;
  late Map<String, int> workingHour;

  //constructor, default constructor
  // Doctor() {}

  // argumented constructor or parameterized constructor
  // positional arguments (this is applicable for functions too)
  // Doctor(
  //    this.docID,
  //    this.docName,
  //    this.specilization,
  //    this.workingHour,
  // );

//named arguments  or non-positional arguments (this is applicable for functions too)
  Doctor({
    required this.docID,
    required this.docName,
    required this.specilization,
    required this.workingHour,
  });

//named constructor
  Doctor.name1() {}
  Doctor.name2() {}

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

void main(List<String> args) {
  Doctor doctor1 = Doctor(
    workingHour: {'in': 9, 'out': 22},
    docName: 'Raj Kumar',
    specilization: ['GP'],
    docID: '1',
  );

  doctor1.profile();
  print(doctor1.isAvailable());
}
