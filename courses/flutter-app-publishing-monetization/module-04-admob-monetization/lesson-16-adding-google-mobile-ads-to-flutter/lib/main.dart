import 'package:flutter/material.dart';
const kBg=Color(0xFF050F19);const kCard=Color(0xFF0B1A2A);const kAccent=Color(0xFF00D9FF);const kGreen=Color(0xFF00C896);
// import 'package:google_mobile_ads/google_mobile_ads.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize(); // Uncomment with real package
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {const MyApp({super.key});@override Widget build(BuildContext context){
  return MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(scaffoldBackgroundColor:kBg,appBarTheme:const AppBarTheme(backgroundColor:kCard,foregroundColor:Colors.white)),
    home:Scaffold(appBar:AppBar(title:const Text('AdMob Setup')),body:const Center(child:Text('1. Add google_mobile_ads: ^5.3.0\n2. Call MobileAds.instance.initialize()\n3. Use test ad IDs during development\n4. Switch to real IDs for release',style:TextStyle(color:Colors.white,fontSize:18)))));}}
