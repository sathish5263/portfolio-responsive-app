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
        Divider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
          child: Center(
            child: Container(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [              
                        Text(
                      "REFERENCES DETAILS",
                      style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold, fontSize: 20,),
                     ),
                     SizedBox(
                      height: defaultPadding,
                        ),
                      Center(
                        child: Responsive(
                        mobile: ProjectsGridView1(crossAxisCount: 1,
                        childAspectRatio: 1.1,),
                        desktop: ProjectsGridView1(
                          childAspectRatio: 1.2,
                        ),
                         tablet: ProjectsGridView1(
                         childAspectRatio: 1.5,
                         ),
                         mobileLarge:ProjectsGridView1(
                              crossAxisCount: 2,
                             childAspectRatio: 0.7,
                              ) ,
                         ),
                      ),
                
                  ]
                  ),
                ),
               ),
          ),
        )
        //Recommendations(),
      ],
    );
  }
}

class ProjectCard1 extends StatelessWidget {
  const ProjectCard1({
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
         // const Spacer(),
          SizedBox(height: defaultPadding,),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 10 : 9,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5,color: Colors.amberAccent),
          ),
         // Spacer(),
        ],
      ),
    );
  }
}

class Project1 {
  final String? title, description;

  Project1({this.title, this.description});
}

List<Project> demo_projects1 = [
  Project(
    title: "My Info",
    description:
        " SATHISH, \n\n 09/04/2002, \n\n PATTUKOTTAI, THANJAVUR DISTRICT, \n\n PIN-614701 \n\n satis5263@gmail.com",
  ),
];

class ProjectsGridView1 extends StatelessWidget {
  ProjectsGridView1({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard1(
              project: demo_projects1[index],
            ));
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
            maxLines: Responsive.isMobileLarge(context) ? 8 : 6,
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
