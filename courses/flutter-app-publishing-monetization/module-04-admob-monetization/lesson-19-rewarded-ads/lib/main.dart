import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Rewarded Ads')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Rewarded Ad Flow:\n\n1. Load rewarded ad\n2. User taps 'Watch Ad' button\n3. Show ad\n4. onUserEarnedReward callback\n5. Grant reward (coins, hints)\n6. Test ID:\n   ca-app-pub-3940256099942544/5224354917\n\nUsers love this format!',style:TextStyle(color:Colors.white,fontSize:18))))));}}
