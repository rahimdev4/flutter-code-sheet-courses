import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('App Signing')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('keytool -genkey -v\n  -keystore upload-keystore.jks\n  -keyalg RSA -keysize 2048\n  -validity 10000\n  -alias upload\n\n⚠️ NEVER lose your keystore!\n⚠️ NEVER commit it to git!\n\nUse Google Play App Signing\nfor key management.',style:TextStyle(color:Colors.white,fontSize:18))))));}}
