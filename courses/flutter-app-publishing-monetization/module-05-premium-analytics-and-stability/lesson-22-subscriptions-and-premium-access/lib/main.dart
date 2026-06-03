import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});@override State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
  bool _isPremium=false;
  @override Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
      home:Scaffold(appBar:AppBar(title:const Text('Premium Access')),
        body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
          Icon(_isPremium?Icons.star:Icons.lock,size:64,color:_isPremium?kGreen:Colors.white54),
          const SizedBox(height:16),
          Text(_isPremium?'Premium Active!':'Free User',style:const TextStyle(color:Colors.white,fontSize:24)),
          const SizedBox(height:24),
          ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:kAccent,foregroundColor:kBg),
            onPressed:()=>setState(()=>_isPremium=!_isPremium),child:Text(_isPremium?'Cancel':'Upgrade to Premium')),
        ]))));}}
