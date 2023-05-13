
import 'package:flutter/material.dart';

import '../../components/animated_progress_indication.dart';
import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
           "Coding", 
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
       AnimatedLinearProgressIndicator(
        percentage: 0.5,
        label: "Dart",
       ),
       AnimatedLinearProgressIndicator(
        percentage: 0.7,
        label: "C/C++",
       ),
       AnimatedLinearProgressIndicator(
        percentage: 0.6,
        label: "Java",
       ), 
       AnimatedLinearProgressIndicator(
        percentage: 0.4,
        label: "HTML&CSS",
       ), 
        AnimatedLinearProgressIndicator(
        percentage: 0.3,
        label: "Python",
       ),
      ],
    );
  }
}
