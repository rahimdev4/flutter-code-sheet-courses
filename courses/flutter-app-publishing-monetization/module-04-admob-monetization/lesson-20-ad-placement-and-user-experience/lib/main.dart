import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Ad Placement UX')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Good Placement:\n✅ Banner at bottom\n✅ Interstitial between levels\n✅ Rewarded before hints\n\nBad Placement:\n❌ Ads blocking buttons\n❌ Interstitial on app open\n❌ Ads every 10 seconds\n❌ Accidental click traps\n\nHappy users = more retention',style:TextStyle(color:Colors.white,fontSize:18))))));}}
