import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('In-App Purchases')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('IAP Types:\n\n💎 Consumable — coins, gems\n🔓 Non-consumable — remove ads\n📅 Subscription — monthly/annual\n\nPackage: in_app_purchase\n\nFlow:\n1. Query products from store\n2. User initiates purchase\n3. Verify receipt\n4. Grant access',style:TextStyle(color:Colors.white,fontSize:18))))));}}
