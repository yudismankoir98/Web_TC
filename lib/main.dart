import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB2ayyJgees7QUOqk8XlgW2PUIMeC8kaOI",
          authDomain: "webtc-b69ef.firebaseapp.com",
          projectId: "webtc-b69ef",
          storageBucket: "webtc-b69ef.appspot.com",
          messagingSenderId: "840851350435",
          appId: "1:840851350435:web:55ef4a3151673798283016"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Halamanutama(),
    );
  }
}

class Halamanutama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 1, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 1),
                  Image.asset(
                    'images/Logo_Education_Center_2 1.png', // Ganti dengan path gambar Anda
                    width: 150,
                  ),
                  SizedBox(width: 450),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Courses',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Articles',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 400),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan, // Warna tombol sesuai keinginan
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Row(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Untuk mengatur elemen di bagian atas
              mainAxisAlignment: MainAxisAlignment
                  .center, // Untuk mengatur elemen di bagian atas
              children: [
                // Bagian Kiri (Teks)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DAC Education Center',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'DAC provides progressive, and affordable',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'courses, accessible on website, designed to',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'empower individuals to enhance their skills',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 32,
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Start Now'),
                      ),
                    ],
                  ),
                ),
                // Bagian Kanan (Gambar)
                SizedBox(width: 3),
                Align(
                  alignment: Alignment.topRight, // Menggeser gambar ke kiri
                  child: Image.asset(
                    'images/Online Teaching.jpg', // Ganti dengan path gambar Anda
                    width: 1000,
                  ),
                ),
              ],
            ),
            // Row baru paling bawah
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  'Advantage join our education center',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 2,
                  width: 20,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 16),
                ),
                SizedBox(height: 16),
                Container(
                  width: 700,
                  child: Text(
                    'We provide to you the best choiches for you. Customize it according to your coding preferences, and ensure a seamless learning journey guided by our experienced instructors.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(height: 32), // Spasi antara teks dan gambar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100, // Atur lebar gambar sesuai kebutuhan
                          child: Image.asset(
                            'images/ICON 04 (1).jpg', // Ganti dengan path gambar pertama Anda
                            height: 100,
                          ),
                        ),
                        Text(
                          'ACCESS CONTENT EVERYTIME', // Tambahkan teks yang sesuai di sini
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300, // Atur lebar gambar sesuai kebutuhan
                          child: Image.asset(
                            'images/Device.jpg', // Ganti dengan path gambar kedua Anda
                            height: 100,
                          ),
                        ),
                        Text(
                          'SUPPORT MULTIPLE DEVICE', // Tambahkan teks yang sesuai di sini
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100, // Atur lebar gambar sesuai kebutuhan
                          child: Image.asset(
                            'images/project management (1).jpg', // Ganti dengan path gambar ketiga Anda
                            height: 100,
                          ),
                        ),
                        Text(
                          'STUDY CASE & PROJECT', // Tambahkan teks yang sesuai di sini
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 32), // Spasi antara teks dan gambar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100, // Atur lebar gambar sesuai kebutuhan
                          child: Image.asset(
                            'images/Certificate.jpg', // Ganti dengan path gambar pertama Anda
                            height: 100,
                          ),
                        ),
                        Text(
                          'ACCESS CONTENT EVERYTIME', // Tambahkan teks yang sesuai di sini
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300, // Atur lebar gambar sesuai kebutuhan
                          child: Image.asset(
                            'images/Money Wallet.jpg', // Ganti dengan path gambar kedua Anda
                            height: 100,
                          ),
                        ),
                        Text(
                          'AFFORDABLE COURSES', // Tambahkan teks yang sesuai di sini
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100, // Atur lebar gambar sesuai kebutuhan
                          child: Image.asset(
                            'images/Lecturer.jpg', // Ganti dengan path gambar ketiga Anda
                            height: 100,
                          ),
                        ),
                        Text(
                          'EXPERIENCE INSTRUCTOR', // Tambahkan teks yang sesuai di sini
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  'Bundle Courses',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Atur warna teks sesuai keinginan
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Offline course',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 14),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Junior web developer',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '(5 course)',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Rp 400.000',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  10), // Jarak antara teks "Rp 400.000" dan tombol "10%"
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "10%" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.green, // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              '10%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors
                              .blueAccent, // Warna tombol sesuai keinginan
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View Bundle',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons
                                .arrow_outward_rounded), // Menambahkan ikon tanda panah ke kanan di sini
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 130),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white60, // Warna tombol sesuai keinginan
                      padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5), // Mengurangi nilai vertical
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'See More Package',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_outward_rounded,
                          color: Colors.blue,
                        ), // Menambahkan ikon tanda panah ke kanan di sini
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Atur warna teks sesuai keinginan
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Container(
                  height: 2,
                  width: 20,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 16),
                ),
                SizedBox(height: 32, width: 50), // Spasi antara teks dan gambar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16),
                    Container(
                      // Pengaturan tampilan container utama
                      padding:
                          EdgeInsets.all(16), // Atur padding sesuai keinginan
                      margin: EdgeInsets.only(
                          top: 16), // Atur margin sesuai keinginan
                      width: 300,
                      height: 445,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Atur warna latar belakang container sesuai keinginan
                        borderRadius: BorderRadius.circular(
                            15), // Atur sudut bulat sesuai keinginan
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Container(
                            width: 250,
                            height: 150,
                            // Pengaturan tampilan container dalam
                            padding: EdgeInsets.all(
                                16), // Atur padding sesuai keinginan
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey, // Atur warna latar belakang container dalam sesuai keinginan
                              borderRadius: BorderRadius.circular(
                                  15), // Atur sudut bulat sesuai keinginan
                            ),
                            child: Column(
                              children: [
                                // Tambahkan elemen-elemen dalam container dalam ini
                                SizedBox(height: 8),
                                // Tambahkan elemen-elemen lainnya di sini
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Offline course',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Learn basic HTML',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Rp 100.000',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            // Tambahkan container ini untuk garis bawah
                            height: 1, // Lebar garis bawah
                            color: Colors
                                .black, // Warna garis bawah sesuai keinginan
                            margin: EdgeInsets.symmetric(
                                vertical: 16), // Atur margin sesuai keinginan
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .blueAccent, // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Course',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(Icons
                                    .arrow_outward_rounded), // Menambahkan ikon tanda panah ke kanan di sini
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16, width: 50),
                    Container(
                      // Pengaturan tampilan container utama
                      padding:
                          EdgeInsets.all(16), // Atur padding sesuai keinginan
                      margin: EdgeInsets.only(
                          top: 16), // Atur margin sesuai keinginan
                      width: 300,
                      height: 445,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Atur warna latar belakang container sesuai keinginan
                        borderRadius: BorderRadius.circular(
                            15), // Atur sudut bulat sesuai keinginan
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Container(
                            width: 250,
                            height: 150,
                            // Pengaturan tampilan container dalam
                            padding: EdgeInsets.all(
                                16), // Atur padding sesuai keinginan
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey, // Atur warna latar belakang container dalam sesuai keinginan
                              borderRadius: BorderRadius.circular(
                                  15), // Atur sudut bulat sesuai keinginan
                            ),
                            child: Column(
                              children: [
                                // Tambahkan elemen-elemen dalam container dalam ini
                                SizedBox(height: 8),
                                // Tambahkan elemen-elemen lainnya di sini
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Offline course',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Learn basic CSS',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Rp 100.000',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            // Tambahkan container ini untuk garis bawah
                            height: 1, // Lebar garis bawah
                            color: Colors
                                .black, // Warna garis bawah sesuai keinginan
                            margin: EdgeInsets.symmetric(
                                vertical: 16), // Atur margin sesuai keinginan
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .blueAccent, // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Course',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(Icons
                                    .arrow_outward_rounded), // Menambahkan ikon tanda panah ke kanan di sini
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16, width: 50),
                    Container(
                      // Pengaturan tampilan container utama
                      padding:
                          EdgeInsets.all(16), // Atur padding sesuai keinginan
                      margin: EdgeInsets.only(
                          top: 16), // Atur margin sesuai keinginan
                      width: 300,
                      height: 445,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Atur warna latar belakang container sesuai keinginan
                        borderRadius: BorderRadius.circular(
                            15), // Atur sudut bulat sesuai keinginan
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Container(
                            width: 250,
                            height: 150,
                            // Pengaturan tampilan container dalam
                            padding: EdgeInsets.all(
                                16), // Atur padding sesuai keinginan
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey, // Atur warna latar belakang container dalam sesuai keinginan
                              borderRadius: BorderRadius.circular(
                                  15), // Atur sudut bulat sesuai keinginan
                            ),
                            child: Column(
                              children: [
                                // Tambahkan elemen-elemen dalam container dalam ini
                                SizedBox(height: 8),
                                // Tambahkan elemen-elemen lainnya di sini
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Offline course',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Learn basic Javascript',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Rp 100.000',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            // Tambahkan container ini untuk garis bawah
                            height: 1, // Lebar garis bawah
                            color: Colors
                                .black, // Warna garis bawah sesuai keinginan
                            margin: EdgeInsets.symmetric(
                                vertical: 16), // Atur margin sesuai keinginan
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .blueAccent, // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Course',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(Icons
                                    .arrow_outward_rounded), // Menambahkan ikon tanda panah ke kanan di sini
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32, width: 50), // Spasi antara teks dan gambar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16),
                    Container(
                      // Pengaturan tampilan container utama
                      padding:
                          EdgeInsets.all(16), // Atur padding sesuai keinginan
                      margin: EdgeInsets.only(
                          top: 16), // Atur margin sesuai keinginan
                      width: 300,
                      height: 445,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Atur warna latar belakang container sesuai keinginan
                        borderRadius: BorderRadius.circular(
                            15), // Atur sudut bulat sesuai keinginan
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Container(
                            width: 250,
                            height: 150,
                            // Pengaturan tampilan container dalam
                            padding: EdgeInsets.all(
                                16), // Atur padding sesuai keinginan
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey, // Atur warna latar belakang container dalam sesuai keinginan
                              borderRadius: BorderRadius.circular(
                                  15), // Atur sudut bulat sesuai keinginan
                            ),
                            child: Column(
                              children: [
                                // Tambahkan elemen-elemen dalam container dalam ini
                                SizedBox(height: 8),
                                // Tambahkan elemen-elemen lainnya di sini
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Offline course',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Learn basic PHP',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Rp 100.000',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            // Tambahkan container ini untuk garis bawah
                            height: 1, // Lebar garis bawah
                            color: Colors
                                .black, // Warna garis bawah sesuai keinginan
                            margin: EdgeInsets.symmetric(
                                vertical: 16), // Atur margin sesuai keinginan
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .blueAccent, // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Course',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(Icons
                                    .arrow_outward_rounded), // Menambahkan ikon tanda panah ke kanan di sini
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16, width: 400),
                    Container(
                      // Pengaturan tampilan container utama
                      padding:
                          EdgeInsets.all(16), // Atur padding sesuai keinginan
                      margin: EdgeInsets.only(
                          top: 16), // Atur margin sesuai keinginan
                      width: 300,
                      height: 445,
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Atur warna latar belakang container sesuai keinginan
                        borderRadius: BorderRadius.circular(
                            15), // Atur sudut bulat sesuai keinginan
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Container(
                            width: 250,
                            height: 150,
                            // Pengaturan tampilan container dalam
                            padding: EdgeInsets.all(
                                16), // Atur padding sesuai keinginan
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey, // Atur warna latar belakang container dalam sesuai keinginan
                              borderRadius: BorderRadius.circular(
                                  15), // Atur sudut bulat sesuai keinginan
                            ),
                            child: Column(
                              children: [
                                // Tambahkan elemen-elemen dalam container dalam ini
                                SizedBox(height: 8),
                                // Tambahkan elemen-elemen lainnya di sini
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Offline course',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Learn basic MySql',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Rp 100.000',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            // Tambahkan container ini untuk garis bawah
                            height: 1, // Lebar garis bawah
                            color: Colors
                                .black, // Warna garis bawah sesuai keinginan
                            margin: EdgeInsets.symmetric(
                                vertical: 16), // Atur margin sesuai keinginan
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors
                                  .blueAccent, // Warna tombol sesuai keinginan
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Course',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(Icons
                                    .arrow_outward_rounded), // Menambahkan ikon tanda panah ke kanan di sini
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white60, // Warna tombol sesuai keinginan
                      padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5), // Mengurangi nilai vertical
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'See More Courses',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_outward_rounded,
                          color: Colors.blue,
                        ), // Menambahkan ikon tanda panah ke kanan di sini
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),
            Text(
              'Articles',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Atur warna teks sesuai keinginan
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Container(
              height: 2,
              width: 20,
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 16),
            ),
            SizedBox(height: 32, width: 50), // Spasi antara teks dan gambar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {
                            // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.white, // Warna tombol sesuai keinginan
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5), // Mengurangi nilai vertical
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UI/UX',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Tips to learn Figma from Profesional',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Tellus sit sed consequat mauris.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Read more...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '20 Agustus 2023',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16, width: 50),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.white, // Warna tombol sesuai keinginan
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5), // Mengurangi nilai vertical
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UI/UX',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tips to learn Figma from Profesional',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Tellus sit sed consequat mauris.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Read more...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '20 Agustus 2023',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16, width: 50),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.white, // Warna tombol sesuai keinginan
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5), // Mengurangi nilai vertical
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UI/UX',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tips to learn Figma from Profesional',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Tellus sit sed consequat mauris.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Read more...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '20 Agustus 2023',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32, width: 50), // Spasi antara teks dan gambar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {
                            // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.white, // Warna tombol sesuai keinginan
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5), // Mengurangi nilai vertical
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UI/UX',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Tips to learn Figma from Profesional',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Tellus sit sed consequat mauris.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Read more...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '20 Agustus 2023',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16, width: 50),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.white, // Warna tombol sesuai keinginan
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5), // Mengurangi nilai vertical
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UI/UX',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tips to learn Figma from Profesional',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Tellus sit sed consequat mauris.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Read more...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '20 Agustus 2023',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16, width: 50),
                Container(
                  // Pengaturan tampilan container utama
                  padding: EdgeInsets.all(16), // Atur padding sesuai keinginan
                  margin:
                      EdgeInsets.only(top: 16), // Atur margin sesuai keinginan
                  width: 300,
                  height: 445,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Atur warna latar belakang container sesuai keinginan
                    borderRadius: BorderRadius.circular(
                        15), // Atur sudut bulat sesuai keinginan
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.white, // Warna tombol sesuai keinginan
                            padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5), // Mengurangi nilai vertical
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UI/UX',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: 250,
                        height: 150,
                        // Pengaturan tampilan container dalam
                        padding:
                            EdgeInsets.all(16), // Atur padding sesuai keinginan
                        decoration: BoxDecoration(
                          color: Colors
                              .grey, // Atur warna latar belakang container dalam sesuai keinginan
                          borderRadius: BorderRadius.circular(
                              15), // Atur sudut bulat sesuai keinginan
                        ),
                        child: Column(
                          children: [
                            // Tambahkan elemen-elemen dalam container dalam ini
                            SizedBox(height: 8),
                            // Tambahkan elemen-elemen lainnya di sini
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tips to learn Figma from Profesional',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Tellus sit sed consequat mauris.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Read more...',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // Tambahkan container ini untuk garis bawah
                        height: 1, // Lebar garis bawah
                        color:
                            Colors.black, // Warna garis bawah sesuai keinginan
                        margin: EdgeInsets.symmetric(
                            vertical: 16), // Atur margin sesuai keinginan
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '20 Agustus 2023',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi yang ingin Anda lakukan ketika tombol "View Bundle" ditekan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white60, // Warna tombol sesuai keinginan
                  padding: EdgeInsets.symmetric(
                      vertical: 5, horizontal: 5), // Mengurangi nilai vertical
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'See More Articles',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_outward_rounded,
                      color: Colors.blue,
                    ), // Menambahkan ikon tanda panah ke kanan di sini
                  ],
                ),
              ),
            ),
            SizedBox(height: 150),
            Container(
              height: 2, // Anda dapat mengganti tinggi garis sesuai keinginan
              width: 1000, // Anda dapat mengganti lebar garis sesuai keinginan
              color: Colors.blue, // Warna garis sesuai keinginan
              margin: EdgeInsets.symmetric(
                  vertical: 16), // Atur margin sesuai keinginan
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 3),
                      Image.asset(
                        'images/Logo_Education_Center_2 1.png', // Ganti dengan path gambar Anda
                        width: 500,
                      ),
                      Image.asset(
                        'images/Shape.png', // Ganti dengan path gambar Anda
                        width: 150,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Jl. Karet Hijau no.52 Beji Timur,Depok - Jawa Barat 16421',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 1),
                      Image.asset(
                        'images/Rounded_1_.png', // Ganti dengan path gambar Anda
                        width: 150,
                      ),
                      Text(
                        '+62-21-7721-0358',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 15),
                      Image.asset(
                        'images/Mail.png', // Ganti dengan path gambar Anda
                        width: 150,
                      ),
                      Text(
                        'info@dac-solution.com',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 1, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 400),
                  Text(
                    'Social Media',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 30),
                  Icon(
                    Icons.facebook,
                    size: 20,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 15),
                  Image.asset(
                    'images/Instagram.png', // Ganti dengan path gambar Anda
                    width: 50,
                  ),
                  SizedBox(width: 1),
                  Image.asset(
                    'images/whatsapp.png', // Ganti dengan path gambar Anda
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 230, right: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '© Copyright PT DAC Solution Informatika',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors
                              .black38, // Atur warna teks sesuai keinginan
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk menampilkan gambar beserta teks keterangannya dalam satu kolom, tengah
  Widget buildCenteredImageWithText(String imagePath, String text) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
