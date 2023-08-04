


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
             Spacer(flex: 3),
             CircleAvatar(
              radius: 80, 
              backgroundImage: 
              AssetImage("assets/images/MyProfile.JPG"), 
              
            ),
            SizedBox(height: 10,),
            Text(
              "SATHISH V",
              style: Theme.of(context).textTheme.subtitle1,
            ),
             Text(
              "App Developer", 
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontWeight: FontWeight.w100, 
              height: 1.5 , 
              ),
            ), 
             Spacer(flex: 2,),
           ],
        ),
      ),
    );
  }
}