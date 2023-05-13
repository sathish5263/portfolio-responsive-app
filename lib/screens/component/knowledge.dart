
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
         Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        "Knowledge", 
        style: Theme.of(context).textTheme.subtitle2,
        ),
       ), 
       KnowledgeText(text:"C,C++"),
       KnowledgeText(text: "Java"),
       KnowledgeText(text: "Java Swing"),
       KnowledgeText(text: "Flutter, Dart"), 
       KnowledgeText(text: "GIT Knowledge"), 
       KnowledgeText(text: "Cloud(AWS)"), 
       
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SvgPicture.asset("assets/icons/check-svgrepo-com.svg",color:Colors.yellow),
         SizedBox(width: defaultPadding / 2,), 
         Text(text), 
       ],
      ),
    );
  }
}