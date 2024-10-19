import 'package:flutter/material.dart';
import 'package:grabdoc/model/doctor_model.dart';

class ConsultDoctor extends StatefulWidget {
  const ConsultDoctor({super.key});

  @override
  State<ConsultDoctor> createState() => _ConsultDoctorState();
}

class _ConsultDoctorState extends State<ConsultDoctor> {
  List<DoctorModel> doctor = [
    DoctorModel(
        id: 1,
        name: "Dr.S David",
        experiance: "7 Years Experience",
        qulification: "MNAMS,D.N.B Orthopaedics,M.B.BS",
        imageUrl: "android/assets/Rectangle 71 (1).png",
        Description: "Telugu,English, Hindhi"),
    DoctorModel(
        id: 2,
        name: "Dr.S David",
        experiance: "7 Years Experience",
        qulification: "MNAMS,D.N.B Orthopaedics,M.B.BS",
        imageUrl: "android/assets/Rectangle 71 (1).png",
        Description: "Telugu,English, Hindhi"),
    DoctorModel(
        id: 3,
        name: "Dr.S David",
        experiance: "7 Years Experience",
        qulification: "MNAMS,D.N.B Orthopaedics,M.B.BS",
        imageUrl: "android/assets/Rectangle 71 (1).png",
        Description: "Telugu,English, Hindhi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Doctors'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notification_add),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
        ),
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 125),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'search',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search, color: Colors.black),
                contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(
                        255, 8, 8, 8), // Color when the field is not focused
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(
                        255, 3, 12, 4), // Color when the field is focused
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: doctor.length,
                itemBuilder: (BuildContext context, int index) {
                  final doctors = doctor[index];
                  return Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.asset(
                          doctors.imageUrl,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(doctors.name),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(doctors.experiance),
                            Text(doctors.qulification),
                            Text(doctors
                                .Description), // Display the new description
                          ],
                        ),
                      ));
                }),
          )
        ]));
  }
}
