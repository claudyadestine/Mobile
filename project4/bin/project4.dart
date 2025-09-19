import 'dart:io';

import 'package:project4/project4.dart' as project4;

void main(List<String> arguments) {
  //print('Hello world: ${project4.calculate()}!');
//fix list
  //var fl = List<int> .filled(4,7);
  //fl[0]=1;
  //fl[1]=2;
  //fl[2]=3;
  //fl[3]=4;
  //fl[4]=5;

  //
 
 //grow list
  //var gl= [1,2,3];
  //gl.add(18);
  //gl.remove(2);
  //stdout.writeln(gl);

  //Set Nilai
  //var setnilai1 = <int> {1, 2, 3, 4};
  //var setnilai2 = <int> {3,3,4,5};

  //print(setnilai2);
  //print(setnilai1.union(setnilai2));
  //print(setnilai1.intersection(setnilai2));


  //Percobaan 1
  //var setnilai1 =<int>{};
  //var setnilai2 =<int>{1,2,3};
 
 //stdout.writeln("Jumlah data setNilai1 = ");
  //String? input1 = stdin.readLineSync();
  //int jumlah1 = (int.tryParse(input1 ?? '')) ?? 0;
  //for (var i = 0; i < jumlah1; i++) {
    //stdout.writeln("Masukkan Nilai Ke-${i+1} = ");
    //String? inputNilai = stdin.readLineSync();
    //int nilai=(int.tryParse(inputNilai ?? '')) ?? 0;
    //setnilai1.add(nilai);
  //}

  //print(setnilai1);


  //percobaan 2
  //var setnilai1 =<String>{};
 
 //stdout.writeln("Jumlah data setNilai1 = ");
  //String? input1 = stdin.readLineSync();
  //int jumlah1 = (int.tryParse(input1 ?? '')) ?? 0;
  //for (var i = 0; i < jumlah1; i++) {
    //stdout.writeln("Masukkan Nilai Ke-${i+1} = ");
    //String? inputNilai = stdin.readLineSync();
    //String nilai=inputNilai ?? '0';
    //setnilai1.add(nilai);
  //}
  //var nilaiList = setnilai1.toList();
  //print(nilaiList.elementAt(1));

  //Map
  var sudah = {'nim': "101", 'nama': "Andi", 'umur': 20};
  print(sudah);
  print(sudah['nama']);

  //percobaan map
  var opo = {
    'nim' : ["101", "102"],
    'nama' : ["Andi", "Budi"], 
    'umur' : [20, 21],
  };
  print(opo);
  //print(opo['nama']![1]); //menampilkan nama pertama saja
  print(opo['nama']);

}
