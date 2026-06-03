import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Production Access')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Requirements:\n\n✅ 20+ testers opted in\n✅ 14-day closed test done\n✅ App content declarations filled\n✅ Data Safety completed\n✅ Privacy policy URL set\n✅ Content rating done\n\nGoogle reviews within 1-7 days',style:TextStyle(color:Colors.white,fontSize:18))))));}}
