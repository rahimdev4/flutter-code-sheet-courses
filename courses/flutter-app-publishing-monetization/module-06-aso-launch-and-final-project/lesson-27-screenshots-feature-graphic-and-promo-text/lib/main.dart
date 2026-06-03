import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Visual Assets')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Screenshots:\n📱 Min 2, max 8\n📱 Show key features\n📱 Add text captions\n📱 Use device frames\n\nFeature Graphic:\n🖼 1024 × 500\n🖼 App name + tagline\n🖼 Key visual + brand colors\n\nThese sell your app!',style:TextStyle(color:Colors.white,fontSize:18))))));}}
