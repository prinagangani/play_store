import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class TopchatScreen extends StatefulWidget {
  const TopchatScreen({Key? key}) : super(key: key);

  @override
  State<TopchatScreen> createState() => TopchatScreenState();
}

class TopchatScreenState extends State<TopchatScreen> {
  HomeProvider? ht,hf;
  @override
  Widget build(BuildContext context) {
    ht = Provider.of<HomeProvider>(context,listen: true);
    hf = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'detail',arguments: index);
                  },
                  child: ListTile(
                    leading: Container(
                      height: 70,width: 55,decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),),
                      child: Image.asset("${ht!.image[index]}",fit: BoxFit.cover,),
                    ),
                    title: Text("${hf!.name[index]}"),
                    subtitle: Text("${hf!.subtitle[index]}"),
                  ),
                );
              },itemCount: ht!.image.length,),
            ),
          ],
        ),
      ),
    );
  }
}
