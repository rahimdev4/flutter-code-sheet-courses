import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() {
  // A variable that alerts listeners when it changes
  final counter = ValueNotifier<int>(0);
  
  counter.addListener(() {
    print('Counter changed to: ${counter.value}');
  });

  counter.value++; // triggers listener
  counter.value++; // triggers listener
}
