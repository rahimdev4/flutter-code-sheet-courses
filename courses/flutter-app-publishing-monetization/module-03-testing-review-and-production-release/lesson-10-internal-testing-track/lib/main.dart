import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Internal Testing')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Internal Testing Track:\n\n👥 Up to 100 testers\n⚡ Available instantly (no review)\n🔗 Share opt-in link\n📦 Upload AAB here first\n\nGreat for quick self-testing\nbefore closed testing.',style:TextStyle(color:Colors.white,fontSize:18))))));}}
