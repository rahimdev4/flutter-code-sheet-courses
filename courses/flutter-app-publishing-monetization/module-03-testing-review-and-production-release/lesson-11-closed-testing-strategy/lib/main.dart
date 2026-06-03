import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Closed Testing')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Closed Testing Strategy:\n\n👥 20+ testers minimum\n📅 14 days minimum\n📲 Testers must opt-in and install\n📊 Monitor crash-free rate\n📝 Collect feedback\n\nThis is REQUIRED for\nnew production access!',style:TextStyle(color:Colors.white,fontSize:18))))));}}
