import 'package:flutter/material.dart';
import 'package:new_vigenesia/ui/Login/login.dart';
import 'background.dart';
import 'package:new_vigenesia/constants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String name = '';
  String profession = '';

  @override
  Widget build(BuildContext context) {
    return Background(
      key: _formKey,
      child: Scrollbar(
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "REGISTRASI",
                    style: TextStyle(
                      fontSize: 25, // Ukuran teks
                      color: Colors.black, // Warna teks
                      fontWeight: FontWeight.w100, // Ketebalan teks
                    ),
                  ),
                  SizedBox(height: 20),
                  // Image.asset(
                  //   "assets/images/log_in.png",
                  //   width: size.width * 0.5,
                  // ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: kBlueColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      filled: true,
                      fillColor: kWhiteColor,
                      hintText: 'Enter a name...',
                      labelText: 'Name',
                    ),
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.computer,
                        color: kBlueColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      filled: true,
                      fillColor: kWhiteColor,
                      hintText: 'Enter a Profession...',
                      labelText: 'Profession',
                    ),
                    onChanged: (value) {
                      profession = value;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: kBlueColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      filled: true,
                      fillColor: kWhiteColor,
                      hintText: 'Enter an email...',
                      labelText: 'Email',
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: kBlueColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      filled: true,
                      fillColor: kWhiteColor,
                      hintText: 'Enter a password...',
                      labelText: 'Password',
                    ),
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double
                        .infinity, // Lebar tombol akan mengikuti lebar penuh dari textfield
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xffffd207), // Warna tombol
                        foregroundColor: Colors.black, // Warna teks
                        padding:
                            EdgeInsets.symmetric(vertical: 20), // Tinggi tombol
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => MainScreen()));
                      },
                      child: const Text('REGISTRATION'),
                    ),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    'already have an account?',
                    style: TextStyle(
                      fontSize: 10, // Ukuran teks
                      color: Colors.black, // Warna teks Ketebalan teks
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Arahkan ke halaman Login ketika teks diklik
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration
                            .underline, // Garis bawah teks untuk memberi kesan link
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
