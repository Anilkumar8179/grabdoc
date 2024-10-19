import 'package:flutter/material.dart';
import 'package:grabdoc/Login/home.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('android/assets/Doctor hand 1.png')),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Date of birth(dd/mm/yy)',
                  suffixIcon: Icon(Icons.date_range),
                  prefixIcon: Icon(Icons.date_range),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Male'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Female'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Others'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
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
                      vertical: 10.0, horizontal: 100.0),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
