import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/screens/home/view/for_screen.dart';
import 'package:play_store/screens/home/view/top_chat_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu,color: Colors.black,),
          title: Text("Search for apps & games",style: TextStyle(color: Colors.black),),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(25),
            child: TabBar(
              indicatorColor: Colors.green.shade900,
              labelColor: Colors.black,
              tabs: [
                Tab(text: "For you",),
                Tab(text: "Top charts",),
                Tab(text: "Editor's choice",),
                Tab(text: "Categories",),
              ],
            ),
          ),
        ),
            body: TabBarView(
              children: [
                ForyouScreen(),
                TopchatScreen(),
                TopchatScreen(),
                TopchatScreen(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.keyboard_alt_outlined),label: "Games"),
                BottomNavigationBarItem(icon: Icon(Icons.apps_outlined),label: "Apps"),
                BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined),label: "Movies & Tv"),
                BottomNavigationBarItem(icon: Icon(Icons.book_online_outlined),label: "Books"),
              ],
              selectedItemColor: Colors.green.shade900,
              unselectedItemColor: Colors.black,
            ),
      ),),
    );
  }
}
