import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext context){
return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
home:Scaffold(appBar:AppBar(title:const Text('Play Console Setup')),body:const Padding(padding:EdgeInsets.all(16),child:Center(child:Text('Steps:\n1. Pay $25 developer fee\n2. Verify identity\n3. Create app → name, language\n4. Set app category\n5. Complete store listing\n6. Complete content rating\n7. Complete Data Safety\n8. Set pricing (free/paid)\n9. Upload AAB to testing track',style:TextStyle(color:Colors.white,fontSize:18))))));}}
