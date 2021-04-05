import 'package:flutter/widgets.dart';

class PageModel {
  ///[assetPath] is the path of the image you have somewhere inside your project
  ///[title] is the title of the page you provide
  ///[info] is the info of the page you provide
  final String title, info;
  final Widget imageWidget;

  PageModel(
      {@required this.title, @required this.info, @required this.imageWidget})
      : assert(imageWidget != null),
        assert(title != null),
        assert(info != null);
}
