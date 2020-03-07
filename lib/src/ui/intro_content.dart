import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroContent extends StatelessWidget {
  final PageViewModel page;

  const IntroContent({Key key, @required this.page}) : super(key: key);

  Widget _buildWidget(Widget widget, String text, TextStyle style) {
    return widget ?? Text(text, style: style, textAlign: TextAlign.left);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: page.decoration.contentPadding,
      child: Column(
        children: [
          Padding(
            padding: page.decoration.titlePadding,
            child: _buildWidget(
              page.titleWidget,
              page.title,
              page.decoration.titleTextStyle,
            ),
          ),

          if (page.image != null)
            Container(
              child: Padding(
                padding: page.decoration.imagePadding,
                child: page.image,
              ),
            ),

          Padding(
            padding: page.decoration.descriptionPadding,
            child: _buildWidget(
              page.bodyWidget,
              page.body,
              page.decoration.bodyTextStyle,
            ),
          ),



        ],
      ),
    );
  }
}
