import 'package:flutter/material.dart';
import '../models/page_model.dart';

class OnboardPage extends StatelessWidget {
  final PageModel pageModel;
  final double dragPercent;
  final int index;
  final int pagesLength;

  final Color background;
  final EdgeInsets pagesPadding;
  final Color pagesImageColor;
  final EdgeInsets titleAndInfoPadding;
  final double titleAndInfoHeight;
  final TextStyle titleStyle;
  final TextStyle infoStyle;
  final EdgeInsets infoPadding;
  final Widget imageWidget;

  const OnboardPage(
      {Key key,
      this.pageModel,
      this.background,
      this.index,
      this.pagesLength,
      this.dragPercent,
      this.pagesPadding,
      this.pagesImageColor,
      this.titleAndInfoPadding,
      this.titleAndInfoHeight,
      this.titleStyle,
      this.infoStyle,
      this.infoPadding,
      this.imageWidget})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final singlePageScrollPercentage = dragPercent / (1 / pagesLength);
    return FractionalTranslation(
      translation: Offset(index - singlePageScrollPercentage, 0.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.0, color: background),
          color: background,
        ),
        padding: pagesPadding,
        child: Column(
          children: [
            Expanded(
              child: imageWidget,
            ),
            Container(
              padding: titleAndInfoPadding,
              width: double.infinity,
              height: titleAndInfoHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pageModel.title,
                    style: titleStyle,
                  ),
                  Padding(
                    padding: infoPadding,
                    child: Text(
                      pageModel.info,
                      style: infoStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
