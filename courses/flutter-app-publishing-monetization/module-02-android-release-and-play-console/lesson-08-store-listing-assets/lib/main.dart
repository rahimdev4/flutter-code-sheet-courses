import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Store Listing')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Required Assets:\n\n📱 Screenshots: 2-8 per device type\n🖼 Feature Graphic: 1024×500\n📝 Title: max 30 chars\n📝 Short Description: max 80 chars\n📝 Full Description: max 4000 chars\n\nScreenshots sell your app!',style:TextStyle(color:Colors.white,fontSize:18))))));}}
