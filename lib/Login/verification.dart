import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:grabdoc/Login/user_details.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 130, vertical: 50),
          child: Text(
            'Verification',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
        const Image(
          image: AssetImage('android/assets/Group 4.png'),
          width: 230,
          height: 213,
        ),
        const Padding(
          padding: EdgeInsets.all(37.0),
          child: Text(
            'Enter the OTP code from the phone we just sent you.',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: OtpTextField(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            numberOfFields: 4,
            fieldWidth: 50.0,
            borderColor: Colors.indigo,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Text('Dont receive the OTP ? Resend OTP'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserDetails()),
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
          ),
          child: const Text(
            'Verify & Proceed',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
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
      ]),
    );
  }
}
