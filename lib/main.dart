import 'package:flutter/material.dart';
import 'package:play_store/screens/home/provider/home_provider.dart';
import 'package:play_store/screens/home/view/detail_screen.dart';
import 'package:play_store/screens/home/view/for_screen.dart';
import 'package:play_store/screens/home/view/tabbar_screen.dart';
import 'package:play_store/screens/home/view/top_chat_screen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'detail',
        routes: {
          '/':(context) => TabScreen(),
          'top':(context) => TopchatScreen(),
          'detail':(context) => DetailScreen(),
          'for':(context) => ForyouScreen(),
        },
      ),
    ),
  );
}