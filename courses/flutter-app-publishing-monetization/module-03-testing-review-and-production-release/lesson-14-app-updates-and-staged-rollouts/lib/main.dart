import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Staged Rollouts')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Staged Rollout Plan:\n\n1. Release to 10% of users\n2. Monitor crashes for 24h\n3. Increase to 50%\n4. Monitor for another 24h\n5. Full 100% rollout\n\n⚠️ Halt if crash rate > 2%\n✅ Always increment build number',style:TextStyle(color:Colors.white,fontSize:18))))));}}
