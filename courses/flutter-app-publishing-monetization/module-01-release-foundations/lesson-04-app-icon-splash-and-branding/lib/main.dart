import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Icon & Splash')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Packages:\n📱 flutter_launcher_icons\n💦 flutter_native_splash\n\nIcon: 1024×1024 PNG\nSplash: Background color + centered logo\n\nRun after config:\nflutter pub run flutter_launcher_icons\nflutter pub run flutter_native_splash:create',style:TextStyle(color:Colors.white,fontSize:18))))));}}
