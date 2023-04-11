import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class ForyouScreen extends StatefulWidget {
  const ForyouScreen({Key? key}) : super(key: key);

  @override
  State<ForyouScreen> createState() => _ForyouScreenState();
}

class _ForyouScreenState extends State<ForyouScreen> {
  HomeProvider? ht,hf;
  @override
  Widget build(BuildContext context) {
    ht=Provider.of<HomeProvider>(context,listen: true);
    hf=Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(leading: Text("Recommended for you",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
            trailing: Icon(Icons.arrow_forward,color: Colors.black,),),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/candy.jpeg"),
                    ),
                    SizedBox(height: 5,),
                    Text("Candy Crush",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Entertainment-Gaming",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/face.jpeg"),
                    ),
                    SizedBox(height: 5,),
                    Text("Facebook",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Social-Networking",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/gaana.png"),
                    ),
                    SizedBox(height: 5,),
                    Text("Gaana",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Music-Audio",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10,),

            ListTile(leading: Text("Suggested for you",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
              trailing: Icon(Icons.arrow_forward,color: Colors.black,),),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/insta.jpeg"),
                    ),
                    SizedBox(height: 5,),
                    Text("Instagram",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Social-Networking",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/snap.png"),
                    ),
                    SizedBox(height: 5,),
                    Text("Snapchat",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Communicating-Social-Networking",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/tele.png"),
                    ),
                    SizedBox(height: 5,),
                    Text("Temple Rum",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Gaming-Fun",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10,),

            ListTile(leading: Text("Updated app",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
              trailing: Icon(Icons.arrow_forward,color: Colors.black,),),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/tik.png"),
                    ),
                    SizedBox(height: 5,),
                    Text("Tik Tok",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Entertainment",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/twitter.png"),
                    ),
                    SizedBox(height: 5,),
                    Text("Twitter",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Social-Networking",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Container(
                      height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Image.asset("assets/images/whats.jpeg"),
                    ),
                    SizedBox(height: 5,),
                    Text("Whatsapp",style: TextStyle(fontSize: 14,color: Colors.black),),
                    Text("Communication-Videochat",style: TextStyle(fontSize: 12,color: Colors.black),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
