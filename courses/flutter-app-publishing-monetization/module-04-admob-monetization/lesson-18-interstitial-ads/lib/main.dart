import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Interstitial Ads')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Interstitial Ad Flow:\n\n1. Load ad in advance\n2. Show between natural breaks\n   (level complete, screen change)\n3. Test ID:\n   ca-app-pub-3940256099942544/1033173712\n4. Cap frequency (not every screen)\n5. Dispose after showing',style:TextStyle(color:Colors.white,fontSize:18))))));}}
