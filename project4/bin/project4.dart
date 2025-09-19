import 'dart:io';

import 'package:project4/project4.dart' as project4;

void main(List<String> arguments) {
  //print('Hello world: ${project4.calculate()}!');
//fix list
  var fl = List<int> .filled(4,7);
  fl[0]=1;
  fl[1]=2;
  fl[2]=3;
  fl[3]=4;
  //fl[4]=5;
 
 //grow list
  var gl= [1,2,3];
  gl.add(18);
  gl.remove(2);
  stdout.writeln(gl);
}
