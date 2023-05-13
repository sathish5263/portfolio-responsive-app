
import 'package:flutter/material.dart';

import '../../components/animated_progress_indication.dart';
import '../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Text(
        "Skills", 
        style: Theme.of(context).textTheme.subtitle2,
        ),
    ), 
    Row(             
      children: [
        Expanded(
          child: AnimatedCircularProgressIndicator(
          percentage: 0.6, 
          label: "Flutter",
          ),
          ),
          SizedBox(width: defaultPadding,),
        Expanded(
          child: AnimatedCircularProgressIndicator(
          percentage: 0.7, 
          label: "C/C++",
          ),
        ),
          
          SizedBox(width: defaultPadding),
         Expanded(
          child: AnimatedCircularProgressIndicator(
          percentage: 0.5, 
          label: "Firebase",
          ),
        ),
        
      ],
    ),
      ],
    );
  }
}