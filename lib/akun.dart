import 'package:flutter/material.dart';
import 'home.dart';
import 'kelola_akun.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Akun(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  AkunScreenState createState() => AkunScreenState();
}

class AkunScreenState extends State<Akun> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const AkunPage(),
    const Center(child: Text("Logout")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // GridView Section
            Center(
              child: SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, size: 60),
                          Text("Hilmi Haidar Ali",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Universitas Teknologi Yogyakarta"),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // ListView Section

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                String text = ''; // Variable to hold the text
                switch (index) {
                  case 0:
                    text = 'Kelola Akun';
                    break;
                  case 1:
                    text = 'Notifikasi';
                    break;
                  case 2:
                    text = 'kebijakan privasi';
                    break;
                  case 3:
                    text = 'Ketentuan Layanan';
                    break;
                }
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text), // Display the text for each item
                        const SizedBox(height: 4),
                      ],
                    ),
                    trailing: const Icon(Icons.play_arrow),
                    onTap: () {
                      if (text == 'Kelola Akun') {
                        // Navigasi ke halaman Kelola Akun
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KelolaAkun(),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
