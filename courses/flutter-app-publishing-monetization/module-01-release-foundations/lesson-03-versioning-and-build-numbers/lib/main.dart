import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Versioning')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('pubspec.yaml:\nversion: 1.0.0+1\n\n1.0.0 = version name\n  (major.minor.patch)\n\n+1 = build number\n  (must increment every upload)\n\nPlay Console rejects same build number!',style:TextStyle(color:Colors.white,fontSize:18))))));}}
