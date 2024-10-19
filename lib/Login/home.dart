import 'package:flutter/material.dart';
import 'package:grabdoc/doctor_consult/consult_doctor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bottomNavigationBar;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ConsultDoctor()),
            );
          },
        ),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Image(image: AssetImage('android/assets/Rectangle 199.png')),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Reason for Consulting',
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 50,
            shadowColor: Colors.white,
            child: SizedBox(
              width: 365,
              height: 250,
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'search',
                          filled: true,
                          fillColor: Color.fromARGB(255, 229, 63, 63),
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          suffixIcon: Icon(Icons.arrow_drop_down_circle,
                              color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                      ),
                      const Text('Chest Pain')
                    ],
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                      ),
                      const Text('Headache')
                    ],
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                      ),
                      const Text('Wheezing')
                    ],
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                      ),
                      const Text('Cold')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Specialities',
              style: TextStyle(fontSize: 16, color: Colors.indigo),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: SearchBar(
            hintText: 'Seach Specialities, Doctors,',
          ),
        )
      ]),
      bottomNavigationBar: SizedBox(
        width: 414,
        height: 69,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 43, 70, 225),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: 'Consult',
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_week),
              label: 'Appointments',
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Records',
              backgroundColor: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}
