import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ForgotPassword(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "RESPONSI",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              const Text(
                "Lupa Password",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Pesan",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              const SizedBox(
                width: 280,
                child: Text(
                  "Masukkan Email anda dan tunggu kode etik akan dikirimkan",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 40),
              // Field Masukan Email
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Masukan Email",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         // navigasi ke daftar
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => const RegisterPage(),
              //           ),
              //         );
              //       },
              //     ),
              //   ],
              // ),
              const SizedBox(height: 32),
              // Tombol Masuk
              ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  "Kirim",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
