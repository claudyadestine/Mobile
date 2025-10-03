import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ClodApp());
}

class ClodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clod App',
      home: Scaffold(
  //         appBar: AppBar(title: const Text("Column & Row Example")),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             const Text("Atas"),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: const [
  //                 Icon(Icons.star, color: Colors.red, size: 40),
  //                 Icon(Icons.star, color: Colors.green, size: 40),
  //                 Icon(Icons.star, color: Colors.blue, size: 40),
  //         ],
  //       ),
  //       const Text("Bawah"),
  //     ],
  //   ),
  // ),
        appBar: AppBar(
          // title: const Text(
          //   "Balon App", 
          //   style: TextStyle(
          //         fontSize: 32,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //         fontFamily: 'Arial',
                  
          //       ),
          // ),
           title: const FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.horizontal,
            textColor: Colors.blue,
            ),
          backgroundColor: const Color.fromARGB(255, 122, 189, 223),
          leading: const Icon(Icons.menu),
          centerTitle: true,
          actions: const[
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(5), //jarak luar
          padding: const EdgeInsets.all(15), //jarak dalam
          // color: Colors.lightBlue[50],   // background body
          //alignment: Alignment.bottomRight,
          alignment: Alignment.center,  
          width: 2000,
          height: 2000,
          decoration: BoxDecoration(
            // color: const Color.fromARGB(255, 4, 240, 217),
            // borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.white, width: 3),
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 172, 198, 247), const Color.fromARGB(255, 247, 133, 194)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/beruang2.png", width: 150),
              Image.network("https://flutter.dev/images/flutter-logo-sharing.png",width: 150,),
              //Image.file(File('path/to/beruang.png')),
              const Placeholder(
                fallbackWidth: 100,
                fallbackHeight: 100,
                color: Colors.red,),
                const Text(
                  "Custom Font",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 24,),
                    ),
              Text(
                "Balonku ada 5\nRupa-rupa warnanya\nHijau, kuning, kelabu\nMerah muda dan biru",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,//tebal
                  wordSpacing: 5,//jarak antar kata
                  decoration: TextDecoration.underline,
                  color: const Color.fromARGB(255, 160, 2, 2),
                  fontFamily: 'monospace',
                ),
                textAlign: TextAlign.center,//rata kiri, kanan, tengah
                //maxLines: 3, //jumlah baris maksimal
                //overflow: TextOverflow.ellipsis,//kalau kepanjangan
              ),
              const SizedBox(height: 20),
              Text(
                "Meletus balon hijau\nHatiku sangat kacau\nBalonku tinggal 4\nKupegang erat-erat",
                style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.italic, //miring
                  letterSpacing: 8,//jarak antar huruf
                  color: const Color.fromARGB(255, 247, 230, 40), // biar kontras sama background teal
                  fontFamily: 'monospace',
                ),
                textAlign: TextAlign.center,
                
              ),
              const SizedBox(height: 30),
              //    ElevatedButton(
              //     onPressed: (){
              //       print("Elevated Button ditekan!");
              //     },
              //     child: const Text("Elevated Button"),
              // ),
              // TextButton(onPressed:(){
              //   print("Text Button ditekan!");
              // },
              //  child: const Text("Text Button"),
              // ),
              // OutlinedButton(onPressed: (){
              //   print("Outlined Button ditekan!");
              // },
              // child: const Text("Outlined Button"),
              // ),
              // IconButton(
              //   icon: const Icon(Icons.favorite, color: Colors.red),
              //   onPressed: (){
              //     print("Icon Button ditekan!");
              //   },
              // ),
            ],
          ),
        ),
      
        // body: const Center(
        //   child: Text("Body Applikasi"),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
          ), 
          drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.pinkAccent), 
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
              ListTile(leading: Icon(Icons.message),title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(
              Icons.home,
              size: 30,
              color: Colors. blueGrey,
            ), 
            label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                size: 30,
                color: Colors. blueGrey,
                ),
              label: 'Business',
              ),
              BottomNavigationBarItem(icon: Icon(
                Icons.school,
                size: 30,
                color: Colors.blueGrey,
                ), label: 'School'),
              ],
        ),
      ),
    );
  }
}
