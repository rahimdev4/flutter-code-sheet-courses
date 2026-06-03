import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Debug vs Release')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Debug Build:\n🐛 Hot reload\n🐛 DevTools enabled\n🐛 Larger file size\n🐛 Slower performance\n\nRelease Build:\n🚀 Optimized & minified\n🚀 No DevTools\n🚀 Smaller APK/AAB\n🚀 Production ready\n\nflutter build appbundle --release',style:TextStyle(color:Colors.white,fontSize:18))))));}}
