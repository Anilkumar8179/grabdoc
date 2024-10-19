import 'package:flutter/material.dart';
import 'package:grabdoc/Login/verification.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 255, 250, 250),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   'welcome',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                Image(
                  image: AssetImage('android/assets/Shoe 1.png'),
                  width: 494,
                  height: 330,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 40),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color.fromARGB(255, 86, 15, 218),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Colors.indigoAccent, width: 2.0)),
                  hintText: 'Your Phone Number',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.indigoAccent),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigoAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Colors.indigo,
                      width: 1.5,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 140.0),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              'android/assets/Group.png',
              width: 413,
              height: 65,
            )
          ],
        ),
      ),
    );
  }
}
