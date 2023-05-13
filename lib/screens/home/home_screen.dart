import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/project.dart';
import 'package:portfolio_app/models/recommendation.dart';
import 'package:portfolio_app/screens/main_screen.dart';

import '../../responsive.dart';
import 'components/Recommendation_card.dart';
import 'components/animated_counter.dart';
import 'components/home_banner.dart';
import 'components/project_card.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Responsive.isMobileLarge(context)
              ? Column(
                  children: [
                    
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: const [
                        
                        HeighLight(
                      counter: AnimatedCounter(
                        value: 200,
                        text: "+",
                      ),
                      label: "Followers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "+",
                      ),
                      label: "GitHub projects",
                    ),
                      ],
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    
                  ],
                ),
        ),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          //SizedBox(height: defaultPadding,),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          //SizedBox(height: defaultPadding,),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Read More>>>",
          //     style: TextStyle(color: primaryColor),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class HighLight extends StatelessWidget {
  const HighLight({
    super.key,
    required this.counter,
    this.label,
  });

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding,
        ),
        Text(
          "Followers",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class HeighLight extends StatelessWidget {
  const HeighLight({
    super.key,
    required this.counter,
    this.label,
  });

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          "$label",
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
