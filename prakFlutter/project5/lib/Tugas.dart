import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileCounterApp());
}

class MyProfileCounterApp extends StatefulWidget {
  @override
  State<MyProfileCounterApp> createState() => _MyProfileCounterAppState();
}

class _MyProfileCounterAppState extends State<MyProfileCounterApp> {
  int _selectedIndex = 0;

  // 🔹 Buat key khusus untuk halaman counter
  final GlobalKey<_CounterPageState> _counterKey = GlobalKey<_CounterPageState>();

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [ProfilPage(), CounterPage(key: _counterKey)];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Tutup drawer
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const FlutterLogo(size: 28),
              const SizedBox(width: 8),
              Text(
                _selectedIndex == 0 ? 'Profil Mahasiswa' : 'Counter App',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 161, 164, 214),
        ),

        // 👉 Drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 161, 164, 214),
                      Color.fromARGB(255, 210, 183, 227),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/beruang2.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Claudya Destine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'claudyadestin@gmail.com',
                        style: TextStyle(color: Colors.white70, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_circle, color: Colors.blueGrey),
                title: const Text('Profil'),
                onTap: () => _onItemTapped(0),
              ),
              ListTile(
                leading: const Icon(Icons.calculate, color: Colors.blueGrey),
                title: const Text('Counter'),
                onTap: () => _onItemTapped(1),
              ),
            ],
          ),
        ),

        // 👉 Halaman aktif
        body: _pages[_selectedIndex],

        // 👉 Floating Action Button
        floatingActionButton: _selectedIndex == 1
            ? FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 193, 164, 205),
                onPressed: () {
                  // 🔹 Akses fungsi increment langsung dari key yang terhubung
                  _counterKey.currentState?.increment();
                },
                child: const Icon(Icons.add, color: Colors.white),
              )
            : null,

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.blueGrey),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate, color: Colors.blueGrey),
              label: 'Counter',
            ),
          ],
        ),
      ),
    );
  }
}

//
// --------------------- HALAMAN PROFIL ---------------------
//
class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 172, 198, 247),
            Color.fromARGB(255, 247, 133, 194),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/beruang2.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Claudya Destine',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const Text('NIM: 2341760008', style: TextStyle(fontSize: 16)),
            const Text('Jurusan: Teknologi Informasi', style: TextStyle(fontSize: 16)),
            const Text('Prodi: Sistem Informasi Bisnis', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.red),
                SizedBox(width: 5),
                Text('claudyadestin@mail.com'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 5),
                Text('+62 857 3282 1808'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
// --------------------- HALAMAN COUNTER ---------------------
//
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void increment() => setState(() => _counter++);
  void decrement() => setState(() => _counter--);
  void reset() => setState(() => _counter = 0);

  @override
Widget build(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 172, 198, 247),
          Color.fromARGB(255, 247, 133, 194),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Angka saat ini:', style: TextStyle(fontSize: 20)),
          TextButton(
            onPressed: increment,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 106, 78, 118),
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              '$_counter',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 167, 232, 169),
                  foregroundColor: Colors.white,
                ),
                onPressed: increment,
                child: const Text('+'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 229, 157, 151),
                  foregroundColor: Colors.white,
                ),
                onPressed: decrement,
                child: const Text('-'),
              ),
              const SizedBox(width: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 233, 190, 125),
                  side: const BorderSide(color: Color.fromARGB(255, 231, 190, 128), width: 2),
                ),
                onPressed: reset,
                child: const Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}