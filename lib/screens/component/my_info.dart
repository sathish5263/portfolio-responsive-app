


import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23, 
      child: Container(
        color: Color(0xFF242430),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            const Spacer(flex: 5,),
            const CircleAvatar(
              radius: 50, 
              backgroundImage: 
              AssetImage("assets/images/Profile.jpeg"), 
              
            ),
            Text(
              "NareshKumar E",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter Developer \n nknaresh3075@gmail.com", 
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontWeight: FontWeight.w100, 
              height: 1.5 , 
              ),
            ), 
            const Spacer(flex: 2,),
           ],
        ),
      ),
    );
  }
}