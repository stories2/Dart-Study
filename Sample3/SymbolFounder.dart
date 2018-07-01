import 'dart:core';
import 'dart:mirrors';

import 'Foo.dart';

void main() {
  Symbol libFoo = new Symbol("fooLib");

  Symbol classFoo = new Symbol("Foo");

  if(checkClassAvailableInLib(libFoo, classFoo)) {
    print("class found");
  }
}

bool checkClassAvailableInLib(Symbol libName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(libName);

  if(libraryMirror != null) {
    print("found lib");
    print("number of class ${libraryMirror.declarations.length}");
    libraryMirror.declarations.forEach((symbol, declarationMirror){
        print(symbol);
    });

    if(libraryMirror.declarations.containsKey(className)) {
      return true;
    }
  }
  return false;
}