import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Banner Ads')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Banner Ad Setup:\n\n1. Create BannerAd instance\n2. Use test ad unit ID:\n   ca-app-pub-3940256099942544/6300978111\n3. Load the ad\n4. Display with AdWidget\n5. Dispose when done\n\nPlace at bottom of screen\nfor best UX.',style:TextStyle(color:Colors.white,fontSize:18))))));}}
