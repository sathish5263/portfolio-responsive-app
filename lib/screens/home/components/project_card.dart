import 'package:flutter/material.dart';
import 'package:portfolio_app/responsive.dart';

import '../../../constants.dart';
import '../../../models/project.dart';
import '../home_screen.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "MY PROJECTS",
            style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold, fontSize: 20,),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
            mobile: ProjectsGridView(crossAxisCount: 1,
            childAspectRatio: 1.7,),
            desktop: ProjectsGridView(),
            tablet: ProjectsGridView(
              childAspectRatio: 1.1,
            ),
            mobileLarge:ProjectsGridView(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ) ,
          ),
    
          
    
        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
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
        physics: const NeverScrollableScrollPhysics(),
        itemCount: demo_projects.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ));
  }
}
