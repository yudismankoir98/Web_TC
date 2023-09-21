import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? Name;
  String? Contact;
  String? Address;
  String? Lasteducation;
  String? Working;
  String? Email;
  String? Password;
  String? Note;

  bool showSpinner = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addItem({
    String? Name,
    String? Contact,
    String? Address,
    String? Lasteducation,
    String? Working,
    String? Email,
    String? Password,
    String? Note,
  }) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        email: Email!,
        password: Password!,
      );

      if (user != null) {
        // Data yang ingin Anda tambahkan ke Firestore
        Map<String, dynamic> userData = {
          'Name': Name,
          'Contact': Contact,
          'Address': Address,
          'Lasteducation': Lasteducation,
          'Working': Working,
          'Email': Email,
          'Note': Note,
        };

        // Simpan data ke Firestore
        await _firestore.collection('users').doc(user.user?.uid).set(userData);

        // Navigator.pop(context);
      }
    } catch (e) {
      print(e);
    }
  }

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
                      'Get started !',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 50),
                    Text(
                      'Start your education center faster and better',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            onChanged: (value) {
                              Name = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Fullname',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                IconlyLight
                                    .profile, // Icon yang ingin Anda tambahkan
                                color: Color.fromARGB(255, 87, 206, 200),
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              Contact = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'No whatsapp',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                IconlyLight
                                    .call, // Icon yang ingin Anda tambahkan
                                color: Color.fromARGB(255, 87, 206, 200),
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.streetAddress,
                            onChanged: (value) {
                              Address = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Address',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                IconlyLight.location,
                                color: Color.fromARGB(255, 87, 206, 200),
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              Lasteducation = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Last education',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                IconlyLight.work,
                                color: Color.fromARGB(255, 87, 206, 200),
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              Working = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Have been working?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                IconlyLight.activity,
                                color: Color.fromARGB(255, 87, 206, 200),
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              Email = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'you@example.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Image.asset(
                                'images/Group.png', // Ganti dengan path gambar Anda
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) {
                              Password = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'At least 8 character',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Image.asset(
                                'images/Group (1).png', // Ganti dengan path gambar Anda
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          top: 15,
                          right: 16,
                        ), // Menggeser elemen ke kiri
                        child: Container(
                          width: 500,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              Note = value;
                            },
                            enabled: true,
                            decoration: InputDecoration(
                              labelText: 'Reason why join our education center',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                IconlyLight.paper,
                                color: Color.fromARGB(255, 87, 206, 200),
                              ),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 201, 195,
                                    194), // Warna label teks sesuai keinginan Anda
                                fontSize: 10,
                              ),
                              // ... Konfigurasi lainnya
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 50),
                            Text(
                              'By signing up, you’re agree to our',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Terms & Conditions',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF448AFF),
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'and',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Privacy Policy',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF448AFF),
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
                          width: 500,
                          child: ElevatedButton(
                            onPressed: () async {
                              try {
                                await addItem(
                                  Name: Name!,
                                  Contact: Contact!,
                                  Address: Address!,
                                  Lasteducation: Lasteducation,
                                  Working: Working!,
                                  Email: Email!,
                                  Password: Password!,
                                  Note: Note!,
                                );
                                if (context.mounted) {
                                  Navigator.pop(context);
                                }
                              } catch (e) {
                                print(e);
                              }
                            },
                            // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan

                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(153, 54, 192,
                                  202), // Warna tombol sesuai keinginan
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
                                  'Continue',
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
                          SizedBox(width: 50),
                          Container(
                            height: 2,
                            width: 210,
                            color: Color.fromARGB(255, 195, 184, 184),
                            margin: EdgeInsets.symmetric(vertical: 16),
                          ),
                          SizedBox(width: 30),
                          Text(
                            'Or',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 35),
                          Container(
                            height: 2,
                            width: 210,
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
                          width: 500,
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(153, 245, 248,
                                  249), // Warna tombol sesuai keinginan
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
                                SizedBox(width: 20),
                                Image.asset(
                                  'images/Rectangle 18.png', // Ganti dengan path gambar Anda
                                ),
                                Text(
                                  'Sign up with google',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 50),
                            Text(
                              'Joined us before?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Login',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF448AFF),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 150, height: 3),
                  Container(
                    child: Align(
                      alignment: Alignment.topRight, // Menggeser gambar ke kiri
                      child: Image.asset(
                        'images/Tourist Welcome.png', // Ganti dengan path gambar Anda
                        width: 450,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
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
            ],
          ),
          // ... Kode tampilan Anda yang lain tetap sama seperti yang Anda berikan sebelumnya
          // (termasuk tampilan UI, tombol-tombol, dsb.)
        ),
      ),
    );
  }
}
