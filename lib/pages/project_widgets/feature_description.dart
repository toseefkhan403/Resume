import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_design/pages/home_stack_transition_page.dart';
import 'package:portfolio_design/widgets/hover_text_underline.dart';

class FeatureDescription extends StatelessWidget {
  final Projects section;
  final Color color;
  final Color textColor;

  const FeatureDescription(
      {required this.section,
      required this.color,
      required this.textColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: getFeatureDescriptionFromProject(context),
    );
  }

  getFeatureDescriptionFromProject(BuildContext context) {
    switch (section) {
      case Projects.ecoShift:
        return featureDescriptionEcoShift(context);
      case Projects.parallax:
        return featureDescriptionParallax(context);
      case Projects.zeeve:
        return featureDescriptionEcoShift(context);
      case Projects.phaeton:
        return featureDescriptionEcoShift(context);
      case Projects.dcomm:
        return featureDescriptionEcoShift(context);
      case Projects.about:
        return featureDescriptionEcoShift(context);
      case Projects.legacy:
        return featureDescriptionEcoShift(context);
    }
  }

  featureDescriptionEcoShift(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10, horizontal: width > 1000 ? width * 0.2 : 10),
        child: HoverTextUnderline(
          [
            HyperlinkText(
                text: 'EcoShift Chronicles',
                link: 'https://devpost.com/software/ecoshift-chronicles'),
            HyperlinkText(
                text:
                    ' is an engaging 2D-pixel art game where players make choices influencing the environment. Every decision impacts the world, presenting dilemmas influenced by angels and devils, and shaping branching storylines. It combines vibrant graphics, music, and real-life choices for an immersive experience. Players have the option to select distinct characters, save their game progress, and experience gameplay in Japanese.'),
          ],
          textColor: textColor,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  featureDescriptionParallax(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10, horizontal: width > 1000 ? width * 0.2 : 10),
        child: HoverTextUnderline(
          [
            HyperlinkText(text: 'The '),
            HyperlinkText(
                text: 'Parallax Cards',
                link: 'https://pub.dev/packages/parallax_cards'),
            HyperlinkText(
                text:
                    ' package can be used for adding beautiful parallax cards to a Flutter project with customizable overlays. This has been implemented using a scrollable list, where background images move at a different speed than the foreground content, creating a visually appealing depth effect. We have utilized the '),
            HyperlinkText(
                text: 'Flow',
                link:
                    'https://api.flutter.dev/flutter/widgets/Flow-class.html'),
            HyperlinkText(
                text:
                    ' widget and a custom FlowDelegate to calculate and apply the necessary transformations based on the scroll position of the list items. By adjusting the alignment of the background image relative to the scroll position, it creates the illusion of depth as the user scrolls through the list.'),
          ],
          textColor: textColor,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}