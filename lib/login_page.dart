import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:landing_page3/main.dart';
import 'register.dart';
import 'package:landing_page3/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  String? Email;
  String? Password;
  bool showSpiner = false;

  // final AuthService _authService = AuthService();

final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 50),
                    Image.asset(
                      'images/Logo_Education_Center_2 1.png', // Ganti dengan path gambar Anda
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 50),
                    Text(
                      'Welcome Back !',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 50),
                    Text(
                      'Manage your education center faster and better',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black45,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 50,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 400,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              Email =
                              value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                Icons.email, // Icon yang ingin Anda tambahkan
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 10,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 400,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) {
                              Password =
                              value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                Icons.lock, // Icon yang ingin Anda tambahkan
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 1, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 350),
                            Text(
                              'Forgot password ?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[300],
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 16,
                        ),
                        child: Container(
                          width: 400,
                          child: ElevatedButton(
                            onPressed: () async{
                              final user = await _auth.signInWithEmailAndPassword(email: Email!, password: Password!);
                              if(context.mounted) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Halamanutama()),
                              );

                              }
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(153, 12, 220,
                                  235), // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 5), // Mengurangi nilai vertical
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          SizedBox(width: 30),
                          Container(
                            height: 2,
                            width: 175,
                            color: Color.fromARGB(255, 195, 184, 184),
                            margin: EdgeInsets.symmetric(vertical: 16),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Or',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 2,
                            width: 175,
                            color: Color.fromARGB(255, 195, 184, 184),
                            margin: EdgeInsets.symmetric(vertical: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 16,
                        ),
                        child: Container(
                          width: 400,
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(153, 219, 242,
                                  244), // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 5), // Mengurangi nilai vertical
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 100),
                                Image.asset(
                                  'images/Rectangle 18.png', // Ganti dengan path gambar Anda
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Sign in with google',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, right: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()),
                                );
                              },
                              child: Text(
                                'Register',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue[300],
                                  fontSize: 11,
                                ),
                              ),
                            )
                            // Text(
                            //   'New here?',
                            //   textAlign: TextAlign.start,
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.w600,
                            //     color: Colors.black54,
                            //     fontSize: 11,
                            //   ),
                            // ),
                            // // SizedBox(width: 5),
                            // Text(
                            //   'Register',
                            //   textAlign: TextAlign.start,
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.w600,
                            //     color: Colors.blue[300],
                            //     fontSize: 11,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 200),
                  Align(
                    alignment: Alignment.topRight, // Menggeser gambar ke kiri
                    child: Image.asset(
                      'images/Tourist Welcome.png', // Ganti dengan path gambar Anda
                      width: 400,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Align(
                  alignment: Alignment
                      .centerRight, // Tombol akan ditempatkan di sebelah kanan
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // Warna teks sesuai keinginan Anda
                      ),
                    ),
                  ),
                ),
              )

              // ... Bagian lain dari tampilan Anda
            ],
          ),
        ),
      ),
    );
  }
}
