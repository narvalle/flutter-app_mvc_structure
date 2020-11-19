import 'dart:async';

import 'package:flutter/material.dart';

import 'src/pages/app.dart';

void main() {
  return runZonedGuarded((){
    runApp(App());
  }, (onError, stack){
    print('Error in MAIN RUN :: $onError <<>> $stack');
  });

}

