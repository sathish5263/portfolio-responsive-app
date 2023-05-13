import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home/components/Recommendation_card.dart';

import '../../../constants.dart';
import '../../../models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demo_recommendations.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: defaultPadding),
                        child: RecommendationCard(recommendation: demo_recommendations[index],),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}