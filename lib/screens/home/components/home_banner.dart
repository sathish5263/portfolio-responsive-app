
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:Responsive.isMobile(context)?2.5: 3, 
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66),), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space", 
                  style:Responsive.isDesktop(context)? Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white, 
                  ): Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white, 
                ), ),
                if(Responsive.isMobileLarge(context))
                const SizedBox(height: defaultPadding/2,),
                MyBuildAnimatedText(), 
                SizedBox(height: defaultPadding,),
               if(!Responsive.isMobile(context)) ElevatedButton(
                  onPressed: () {}, 
                  style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2, 
                    vertical: defaultPadding), 
                    backgroundColor: primaryColor, 
                    ),
                  child: Text("EXPLORE NOW",
                    style: TextStyle(color: darkColor),
                    ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context))FlutterCodeText(),
          if(!Responsive.isMobileLarge(context))
          SizedBox(width: defaultPadding / 2,),
          Text("I Build "),
      Responsive.isMobile(context)?Expanded(
            child: AnimatedText(),
          ):AnimatedText(),
          if(!Responsive.isMobileLarge(context))
          SizedBox(width: defaultPadding / 2,),
         if(!Responsive.isMobileLarge(context)) FlutterCodeText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Responsive Web and Mobile App UI",speed: Duration(milliseconds: 70)),
        TyperAnimatedText("Job Searching App with Firebase", speed: Duration(milliseconds: 70)),
        TyperAnimatedText("Portfolio App UI", speed: Duration(milliseconds: 70)),
      ],
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter", 
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">")
        ]
      )
    );
  }
}